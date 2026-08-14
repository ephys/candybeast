cd /home/minecraft

echo "Creating new backup"
rsync -avqi --delete candybeast-1.20.1/ candybeast-1.20.1-backup

cd candybeast-1.20.1

echo "stopping server (may take up to 30 seconds)"

screen -r candybeast -X stuff "stop$(printf \\r)"

TIMEOUT=30
ELAPSED=0
INTERVAL=2

while pgrep -f minecraftforge >/dev/null; do
    sleep $INTERVAL
    ELAPSED=$((ELAPSED+INTERVAL))
    if [ $ELAPSED -ge $TIMEOUT ]; then
        echo "Timeout reached. Server might still be stuck. Killing session."
        break
    fi
done

# destroy session (if it exists)

screen -XS candybeast quit

echo "Updating files"

rsync -avqi --delete /home/ephys/1.20.1/mods/ ./mods
rsync -avqi --exclude mods /home/ephys/1.20.1/ .

echo "starting server"

screen -dmS candybeast ./run.sh
