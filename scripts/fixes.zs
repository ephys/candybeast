import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

var items_to_remove = [
    // Disable OP botania features
    <item:botania:tornado_rod>,
    <item:botania:divining_rod>,

    // Disable copper overhaul duplicates
    <item:copperoverhaul:copper_button>,
    <item:copperoverhaul:exposed_copper_button>,
    <item:copperoverhaul:weathered_copper_button>,
    <item:copperoverhaul:oxidized_copper_button>,
    <item:copperoverhaul:waxed_copper_button>,
    <item:copperoverhaul:waxed_exposed_copper_button>,
    <item:copperoverhaul:waxed_weathered_copper_button>,
    <item:copperoverhaul:waxed_oxidized_copper_button>,

    // remove vertical slabs
    <item:createdeco:cracked_red_short_bricks_slab_vert>,
    <item:createdeco:mossy_worn_short_bricks_slab_vert>,
    <item:createdeco:red_long_bricks_slab_vert>,
    <item:createdeco:dusk_bricks_slab_vert>,
    <item:createdeco:red_brick_tiles_slab_vert>,
    <item:createdeco:worn_short_bricks_slab_vert>,
    <item:createdeco:cracked_pearl_brick_tiles_slab_vert>,
    <item:createdeco:mossy_dean_short_bricks_slab_vert>,
    <item:createdeco:mossy_red_short_bricks_slab_vert>,
    <item:createdeco:cracked_scarlet_brick_tiles_slab_vert>,
    <item:createdeco:worn_bricks_slab_vert>,
    <item:createdeco:mossy_blue_bricks_slab_vert>,
    <item:createdeco:mossy_blue_short_bricks_slab_vert>,
    <item:createdeco:cracked_worn_short_bricks_slab_vert>,
    <item:createdeco:dusk_long_bricks_slab_vert>,
    <item:createdeco:cracked_pearl_long_bricks_slab_vert>,
    <item:createdeco:red_short_bricks_slab_vert>,
    <item:createdeco:dean_long_bricks_slab_vert>,
    <item:createdeco:copper_sheet_slab_vert>,
    <item:createdeco:mossy_pearl_bricks_slab_vert>,
    <item:createdeco:mossy_pearl_brick_tiles_slab_vert>,
    <item:createdeco:cracked_red_brick_tiles_slab_vert>,
    <item:createdeco:gold_sheet_slab_vert>,
    <item:createdeco:cracked_dusk_short_bricks_slab_vert>,
    <item:createdeco:pearl_long_bricks_slab_vert>,
    <item:createdeco:dean_brick_tiles_slab_vert>,
    <item:createdeco:cracked_blue_long_bricks_slab_vert>,
    <item:createdeco:cracked_blue_bricks_slab_vert>,
    <item:createdeco:blue_bricks_slab_vert>,
    <item:createdeco:worn_brick_tiles_slab_vert>,
    <item:createdeco:pearl_brick_tiles_slab_vert>,
    <item:createdeco:cracked_red_bricks_slab_vert>,
    <item:createdeco:scarlet_long_bricks_slab_vert>,
    <item:createdeco:mossy_dusk_short_bricks_slab_vert>,
    <item:createdeco:scarlet_short_bricks_slab_vert>,
    <item:createdeco:mossy_dusk_brick_tiles_slab_vert>,
    <item:createdeco:cracked_dusk_long_bricks_slab_vert>,
    <item:createdeco:red_bricks_slab_vert>,
    <item:createdeco:cracked_dean_bricks_slab_vert>,
    <item:createdeco:mossy_dusk_bricks_slab_vert>,
    <item:createdeco:cracked_blue_short_bricks_slab_vert>,
    <item:createdeco:cracked_scarlet_long_bricks_slab_vert>,
    <item:createdeco:mossy_blue_long_bricks_slab_vert>,
    <item:createdeco:blue_short_bricks_slab_vert>,
    <item:createdeco:mossy_worn_long_bricks_slab_vert>,
    <item:createdeco:mossy_dean_brick_tiles_slab_vert>,
    <item:createdeco:mossy_dean_long_bricks_slab_vert>,
    <item:createdeco:blue_long_bricks_slab_vert>,
    <item:createdeco:mossy_worn_brick_tiles_slab_vert>,
    <item:createdeco:cracked_dean_long_bricks_slab_vert>,
    <item:createdeco:cracked_dean_brick_tiles_slab_vert>,
    <item:createdeco:cracked_worn_bricks_slab_vert>,
    <item:createdeco:dusk_short_bricks_slab_vert>,
    <item:createdeco:blue_brick_tiles_slab_vert>,
    <item:createdeco:mossy_red_long_bricks_slab_vert>,
    <item:createdeco:mossy_dusk_long_bricks_slab_vert>,
    <item:createdeco:dean_bricks_slab_vert>,
    <item:createdeco:mossy_scarlet_short_bricks_slab_vert>,
    <item:createdeco:cracked_pearl_short_bricks_slab_vert>,
    <item:createdeco:cracked_worn_long_bricks_slab_vert>,
    <item:createdeco:zinc_sheet_slab_vert>,
    <item:createdeco:brass_sheet_slab_vert>,
    <item:createdeco:cracked_dusk_brick_tiles_slab_vert>,
    <item:createdeco:cracked_dusk_bricks_slab_vert>,
    <item:createdeco:mossy_dean_bricks_slab_vert>,
    <item:createdeco:cracked_scarlet_short_bricks_slab_vert>,
    <item:createdeco:mossy_blue_brick_tiles_slab_vert>,
    <item:createdeco:cracked_red_long_bricks_slab_vert>,
    <item:createdeco:cast_iron_sheet_slab_vert>,
    <item:createdeco:mossy_pearl_long_bricks_slab_vert>,
    <item:createdeco:worn_long_bricks_slab_vert>,
    <item:createdeco:mossy_pearl_short_bricks_slab_vert>,
    <item:createdeco:mossy_scarlet_brick_tiles_slab_vert>,
    <item:createdeco:iron_sheet_slab_vert>,
    <item:createdeco:scarlet_brick_tiles_slab_vert>,
    <item:createdeco:netherite_sheet_slab_vert>,
    <item:createdeco:pearl_bricks_slab_vert>,
    <item:createdeco:mossy_worn_bricks_slab_vert>,
    <item:createdeco:mossy_scarlet_long_bricks_slab_vert>,
    <item:createdeco:dusk_brick_tiles_slab_vert>,
    <item:createdeco:dean_short_bricks_slab_vert>,
    <item:createdeco:scarlet_bricks_slab_vert>,
    <item:createdeco:mossy_red_bricks_slab_vert>,
    <item:createdeco:mossy_scarlet_bricks_slab_vert>,
    <item:createdeco:mossy_red_brick_tiles_slab_vert>,
    <item:createdeco:cracked_pearl_bricks_slab_vert>,
    <item:createdeco:andesite_sheet_slab_vert>,
    <item:createdeco:cracked_dean_short_bricks_slab_vert>,
    <item:createdeco:cracked_blue_brick_tiles_slab_vert>,
    <item:createdeco:cracked_worn_brick_tiles_slab_vert>,
    <item:createdeco:cracked_scarlet_bricks_slab_vert>,
    <item:createdeco:pearl_short_bricks_slab_vert>,

    // Waystones
    <item:waystones:warp_scroll>,
    <item:waystones:return_scroll>,
    <item:waystones:warp_stone>,

    <item:waystones:warp_plate>,
    <item:waystones:attuned_shard>,
    <item:waystones:warp_dust>,
    <item:waystones:sharestone>,
    <item:waystones:portstone>,
    <item:waystones:white_sharestone>,
    <item:waystones:orange_sharestone>,
    <item:waystones:magenta_sharestone>,
    <item:waystones:light_blue_sharestone>,
    <item:waystones:yellow_sharestone>,
    <item:waystones:lime_sharestone>,
    <item:waystones:pink_sharestone>,
    <item:waystones:gray_sharestone>,
    <item:waystones:light_gray_sharestone>,
    <item:waystones:cyan_sharestone>,
    <item:waystones:purple_sharestone>,
    <item:waystones:blue_sharestone>,
    <item:waystones:brown_sharestone>,
    <item:waystones:green_sharestone>,
    <item:waystones:red_sharestone>,
    <item:waystones:black_sharestone>,

    // Thermal

    <item:thermal:redstone_mushroom_spores>,
    <item:thermal:gunpowder_mushroom_spores>,
    <item:thermal:slime_mushroom_spores>,
    <item:thermal:glowstone_mushroom_spores>,
    <item:thermal:device_hive_extractor>,
    <item:thermal:xp_crystal>,
    <item:thermal:rose_gold_plate>,
    <item:thermal:steel_plate>,
    <item:thermal:enderium_plate>,
    <item:thermal:nickel_plate>,
    <item:thermal:tin_plate>,
    <item:thermal:netherite_plate>,
    <item:thermal:copper_plate>,
    <item:thermal:gold_plate>,
    <item:thermal:iron_plate>,

    <item:wstweaks:lava_blade>,
    <item:wstweaks:blaze_blade>,
    <item:thermal:machine_insolator>,
    <item:ae2:drive>,
    <item:ae2:item_storage_cell_1k>,
    <item:ae2:item_storage_cell_4k>,
    <item:ae2:item_storage_cell_16k>,
    <item:ae2:item_storage_cell_64k>,
    <item:ae2:item_storage_cell_256k>,
    <item:ae2:fluid_storage_cell_1k>,
    <item:ae2:fluid_storage_cell_4k>,
    <item:ae2:fluid_storage_cell_16k>,
    <item:ae2:fluid_storage_cell_64k>,
    <item:ae2:fluid_storage_cell_256k>,

    // Disabled because the meteorites are disabled
    <item:ae2:sky_compass>,

    // Redundant with thermal

    <item:pipez:fluid_pipe>,
    <item:pipez:energy_pipe>,
    <item:pipez:gas_pipe>,
    <item:pipez:universal_pipe>,
    <item:pipez:wrench>,
    <item:ae2:certus_quartz_wrench>,
    <item:ae2:nether_quartz_wrench>,

    // Not craftable

    <item:quark:stone_lamp>,
    <item:quark:stone_brick_lamp>,
    <item:quark:pipe>,
] as IItemStack[];

for item in items_to_remove {
    craftingTable.remove(item);
    blastFurnace.remove(item);
    campfire.remove(item);
    furnace.remove(item);
    smithing.remove(item);
    smoker.remove(item);
    stoneCutter.remove(item);
    mods.jei.JEI.hideIngredient(item);
}

// Disable waystones

craftingTable.remove(<item:waystones:waystone>);
craftingTable.remove(<item:waystones:sandy_waystone>);
craftingTable.remove(<item:waystones:mossy_waystone>);

// remove OP things

mods.jei.JEI.hideCategory("thermal:insolator");
mods.jei.JEI.hideCategory("thermal:insolator_catalyst");

// They are dungeon chest only

craftingTable.remove(<item:botania:slime_bottle>);
craftingTable.remove(<item:quark:soul_compass>);
craftingTable.remove(<item:supplementaries:slingshot>);
craftingTable.remove(<item:gadgets:biometer>);
craftingTable.remove(<item:gadgets:compass>);
craftingTable.remove(<item:gadgets:depthmeter>);
craftingTable.remove(<item:gadgets:clock>);
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.remove(<item:paraglider:paraglider>);

// make spawners very hard to break but not unbreakable so they can be moved by pistons

<blockstate:minecraft:spawner>.setDestroySpeed(10000F);

// make obsidian easier to break

<blockstate:minecraft:obsidian>.setDestroySpeed(25F);

// boost durability of golden items

<item:minecraft:golden_pickaxe>.maxDamage = 250;
<item:minecraft:golden_shovel>.maxDamage = 250;
<item:minecraft:golden_axe>.maxDamage = 250;
<item:minecraft:golden_hoe>.maxDamage = 250;
<item:minecraft:golden_sword>.maxDamage = 250;
<item:farmersdelight:golden_knife>.maxDamage = 250;

<item:minecraft:golden_helmet>.maxDamage = 165;
<item:minecraft:golden_chestplate>.maxDamage = 240;
<item:minecraft:golden_leggings>.maxDamage = 225;
<item:minecraft:golden_boots>.maxDamage = 195;

// boost time it takes to break netherrack (still very fragile against explosions)

<blockstate:minecraft:netherrack>.setDestroySpeed(1F);
<blockstate:minecraft:crimson_nylium>.setDestroySpeed(1.1F);
<blockstate:minecraft:warped_nylium>.setDestroySpeed(1.1F);
