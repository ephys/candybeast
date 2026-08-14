#!/usr/bin/env bash
# upload_to_candybeast.sh
# Upload contents of current directory to remote host "candybeast"
# Usage:
#   ./upload_to_candybeast.sh [remote_path] [--delete] [--dry-run]
# Examples:
#   ./upload_to_candybeast.sh                # uploads to candybeast:~/ (current dir name will be created)
#   ./upload_to_candybeast.sh /var/www/site   # uploads contents to /var/www/site on candybeast
#   ./upload_to_candybeast.sh /var/www/site --delete --dry-run

set -eo pipefail

HOST="candybeast"
LOCAL_DIR="$(pwd)"
REMOTE_PATH=""
DRY_RUN=false
DELETE=false

# parse args
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --delete)  DELETE=true ;;
    --help|-h) 
      echo "Usage: $0 [remote_path] [--delete] [--dry-run]"
      exit 0
      ;;
    *)
      # first non-option arg is remote path
      if [ -z "$REMOTE_PATH" ]; then
        REMOTE_PATH="$arg"
      else
        echo "Unknown argument: $arg"
        exit 2
      fi
      ;;
  esac
done

# If remote path not provided, upload into home directory under the local folder name
if [ -z "$REMOTE_PATH" ]; then
  BASENAME="$(basename "$LOCAL_DIR")"
  REMOTE_PATH="~/${BASENAME}"
fi

echo "Local directory: $LOCAL_DIR"
echo "Remote host: $HOST"
echo "Remote path: $REMOTE_PATH"
$DRY_RUN && echo "Mode: DRY RUN (no changes will be made)"
$DELETE && echo "Option: --delete enabled (will remove remote files not present locally)"

# Quick SSH connectivity check (non-interactive)
echo "Checking SSH connectivity to ${HOST}..."
if ! ssh -o BatchMode=yes -o ConnectTimeout=5 "${HOST}" "echo connected" >/dev/null 2>&1; then
  echo "ERROR: Unable to connect to ${HOST} via SSH (ensure 'candybeast' is in your SSH config/known_hosts and you can ssh to it interactively)."
  exit 3
fi
echo "SSH OK."

echo "Using rsync to upload..."

# Build rsync options:
# -a : archive (preserve permissions, timestamps, etc.)
# -v : verbose
# -z : compression during transfer
# --progress : show progress
RSYNC_OPTS=(-a -v -z --progress)
$DRY_RUN && RSYNC_OPTS+=("--dry-run")
$DELETE && RSYNC_OPTS+=("--delete")

# Exclude common unwanted files (customize as needed)
RSYNC_OPTS+=(--exclude-from='.rsyncignore-server')

# Note: trailing slash on source copies contents of current dir (not the directory itself).
echo "Running: rsync ${RSYNC_OPTS[*]} \"$LOCAL_DIR/\" \"${HOST}:${REMOTE_PATH}/\""
rsync "${RSYNC_OPTS[@]}" "$LOCAL_DIR/" "${HOST}:${REMOTE_PATH}/"
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
echo "rsync exited with code $EXIT_CODE"
exit $EXIT_CODE
fi

echo "rsync upload complete."
