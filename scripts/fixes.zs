import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import mods.jeitweaker.Jei;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.game.Game;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

var items_to_remove = [
    // Disable OP botania features
    <item:botania:tornado_rod>,
    <item:botania:divining_rod>,

    // Disable copper overhaul duplicates
    //<item:copperoverhaul:copper_button>,
    //<item:copperoverhaul:exposed_copper_button>,
    //<item:copperoverhaul:weathered_copper_button>,
    //<item:copperoverhaul:oxidized_copper_button>,
    //<item:copperoverhaul:waxed_copper_button>,
    //<item:copperoverhaul:waxed_exposed_copper_button>,
    //<item:copperoverhaul:waxed_weathered_copper_button>,
    //<item:copperoverhaul:waxed_oxidized_copper_button>,

    // remove vertical slabs
    //<item:createdeco:cracked_red_short_bricks_slab_vert>,
    // <item:createdeco:mossy_worn_short_bricks_slab_vert>,
    // <item:createdeco:red_long_bricks_slab_vert>,
    // <item:createdeco:dusk_bricks_slab_vert>,
    // <item:createdeco:red_brick_tiles_slab_vert>,
    // <item:createdeco:worn_short_bricks_slab_vert>,
    // <item:createdeco:cracked_pearl_brick_tiles_slab_vert>,
    // <item:createdeco:mossy_dean_short_bricks_slab_vert>,
    // <item:createdeco:mossy_red_short_bricks_slab_vert>,
    // <item:createdeco:cracked_scarlet_brick_tiles_slab_vert>,
    // <item:createdeco:worn_bricks_slab_vert>,
    // <item:createdeco:mossy_blue_bricks_slab_vert>,
    // <item:createdeco:mossy_blue_short_bricks_slab_vert>,
    // <item:createdeco:cracked_worn_short_bricks_slab_vert>,
    // <item:createdeco:dusk_long_bricks_slab_vert>,
    // <item:createdeco:cracked_pearl_long_bricks_slab_vert>,
    // <item:createdeco:red_short_bricks_slab_vert>,
    // <item:createdeco:dean_long_bricks_slab_vert>,
    // <item:createdeco:copper_sheet_slab_vert>,
    // <item:createdeco:mossy_pearl_bricks_slab_vert>,
    // <item:createdeco:mossy_pearl_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_red_brick_tiles_slab_vert>,
    // <item:createdeco:gold_sheet_slab_vert>,
    // <item:createdeco:cracked_dusk_short_bricks_slab_vert>,
    // <item:createdeco:pearl_long_bricks_slab_vert>,
    // <item:createdeco:dean_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_blue_long_bricks_slab_vert>,
    // <item:createdeco:cracked_blue_bricks_slab_vert>,
    // <item:createdeco:blue_bricks_slab_vert>,
    // <item:createdeco:worn_brick_tiles_slab_vert>,
    // <item:createdeco:pearl_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_red_bricks_slab_vert>,
    // <item:createdeco:scarlet_long_bricks_slab_vert>,
    // <item:createdeco:mossy_dusk_short_bricks_slab_vert>,
    // <item:createdeco:scarlet_short_bricks_slab_vert>,
    // <item:createdeco:mossy_dusk_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_dusk_long_bricks_slab_vert>,
    // <item:createdeco:red_bricks_slab_vert>,
    // <item:createdeco:cracked_dean_bricks_slab_vert>,
    // <item:createdeco:mossy_dusk_bricks_slab_vert>,
    // <item:createdeco:cracked_blue_short_bricks_slab_vert>,
    // <item:createdeco:cracked_scarlet_long_bricks_slab_vert>,
    // <item:createdeco:mossy_blue_long_bricks_slab_vert>,
    // <item:createdeco:blue_short_bricks_slab_vert>,
    // <item:createdeco:mossy_worn_long_bricks_slab_vert>,
    // <item:createdeco:mossy_dean_brick_tiles_slab_vert>,
    // <item:createdeco:mossy_dean_long_bricks_slab_vert>,
    // <item:createdeco:blue_long_bricks_slab_vert>,
    // <item:createdeco:mossy_worn_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_dean_long_bricks_slab_vert>,
    // <item:createdeco:cracked_dean_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_worn_bricks_slab_vert>,
    // <item:createdeco:dusk_short_bricks_slab_vert>,
    // <item:createdeco:blue_brick_tiles_slab_vert>,
    // <item:createdeco:mossy_red_long_bricks_slab_vert>,
    // <item:createdeco:mossy_dusk_long_bricks_slab_vert>,
    // <item:createdeco:dean_bricks_slab_vert>,
    // <item:createdeco:mossy_scarlet_short_bricks_slab_vert>,
    // <item:createdeco:cracked_pearl_short_bricks_slab_vert>,
    // <item:createdeco:cracked_worn_long_bricks_slab_vert>,
    // <item:createdeco:zinc_sheet_slab_vert>,
    // <item:createdeco:brass_sheet_slab_vert>,
    // <item:createdeco:cracked_dusk_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_dusk_bricks_slab_vert>,
    // <item:createdeco:mossy_dean_bricks_slab_vert>,
    // <item:createdeco:cracked_scarlet_short_bricks_slab_vert>,
    // <item:createdeco:mossy_blue_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_red_long_bricks_slab_vert>,
    // <item:createdeco:cast_iron_sheet_slab_vert>,
    // <item:createdeco:mossy_pearl_long_bricks_slab_vert>,
    // <item:createdeco:worn_long_bricks_slab_vert>,
    // <item:createdeco:mossy_pearl_short_bricks_slab_vert>,
    // <item:createdeco:mossy_scarlet_brick_tiles_slab_vert>,
    // <item:createdeco:iron_sheet_slab_vert>,
    // <item:createdeco:scarlet_brick_tiles_slab_vert>,
    // <item:createdeco:netherite_sheet_slab_vert>,
    // <item:createdeco:pearl_bricks_slab_vert>,
    // <item:createdeco:mossy_worn_bricks_slab_vert>,
    // <item:createdeco:mossy_scarlet_long_bricks_slab_vert>,
    // <item:createdeco:dusk_brick_tiles_slab_vert>,
    // <item:createdeco:dean_short_bricks_slab_vert>,
    // <item:createdeco:scarlet_bricks_slab_vert>,
    // <item:createdeco:mossy_red_bricks_slab_vert>,
    // <item:createdeco:mossy_scarlet_bricks_slab_vert>,
    // <item:createdeco:mossy_red_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_pearl_bricks_slab_vert>,
    // <item:createdeco:andesite_sheet_slab_vert>,
    // <item:createdeco:cracked_dean_short_bricks_slab_vert>,
    // <item:createdeco:cracked_blue_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_worn_brick_tiles_slab_vert>,
    // <item:createdeco:cracked_scarlet_bricks_slab_vert>,
    // <item:createdeco:pearl_short_bricks_slab_vert>,

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

    //<item:thermal:redstone_mushroom_spores>,
    //<item:thermal:gunpowder_mushroom_spores>,
    //<item:thermal:slime_mushroom_spores>,
    //<item:thermal:glowstone_mushroom_spores>,
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
    <item:thermal:satchel>,

    // <item:wstweaks:lava_blade>,
    // <item:wstweaks:blaze_blade>,
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
    // <item:ae2:sky_compass>,

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

    // Disable waystones (only worldgen)
    <item:waystones:waystone>,
    <item:waystones:sandy_waystone>,
    <item:waystones:mossy_waystone>,
    <item:waystones:deepslate_waystone>
] as IItemStack[];

for item in items_to_remove {
    craftingTable.remove(item);
    blastFurnace.remove(item);
    campfire.remove(item);
    furnace.remove(item);
    smithing.remove(item);
    smoker.remove(item);
    stoneCutter.remove(item);
    Jei.hideIngredient(item);
}

// remove OP things

Jei.hideCategory(<resource:thermal:insolator>);
Jei.hideCategory(<resource:thermal:insolator_catalyst>);

// They are dungeon chest only

craftingTable.remove(<item:botania:slime_bottle>);
craftingTable.remove(<item:supplementaries:slingshot>);
//craftingTable.remove(<item:gadgets:biometer>);
//craftingTable.remove(<item:gadgets:compass>);
//craftingTable.remove(<item:gadgets:depthmeter>);
//craftingTable.remove(<item:gadgets:clock>);
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

<item:minecraft:potion>.maxStackSize = 16;

// boost time it takes to break netherrack (still very fragile against explosions)

<blockstate:minecraft:netherrack>.setDestroySpeed(1F);
<blockstate:minecraft:crimson_nylium>.setDestroySpeed(1.1F);
<blockstate:minecraft:warped_nylium>.setDestroySpeed(1.1F);

for block in game.blocks {
    for state in block.possibleStates {
        if (state.lightEmission > 0) {
            <tag:blocks:candybeast:lamp>.add(block);
            break;
        }
    }
}

for item in game.items {
    if (item.food != null) {
        <tag:items:candybeast:edible>.add(item);
    }
}

// Nerf uncooked ingredients. Most of them should make you sick too.
var uncooked_ingredients = [
  <item:minecraft:beef>,
  <item:minecraft:porkchop>,
  <item:minecraft:mutton>,
  <item:minecraft:rabbit>,
  <item:minecraft:cod>,
  <item:minecraft:salmon>,
  <item:minecraft:apple>,
  <item:minecraft:melon_slice>,
  <item:minecraft:sweet_berries>,
  <item:minecraft:carrot>,
  <item:minecraft:chicken>,
  <item:alexsmobs:banana>, // TODO: add alex's delights?
  <item:alexsmobs:lobster_tail>,
  <item:alexsmobs:moose_ribs>,
  <item:alexsmobs:kangaroo_meat>,
  <item:alexsmobs:raw_catfish>,
  <item:alexsmobs:flying_fish>,
  <item:corn_delight:corn>,
  <item:ecologics:coconut_slice>,
  <item:ecologics:crab_meat>,
  <item:farmersdelight:cabbage>,
  <item:farmersdelight:cabbage_leaf>, // yes eating the cabbage leaf by leaf gives more food
  <item:farmersdelight:onion>,
  <item:farmersdelight:minced_beef>,
  <item:farmersdelight:bacon>,
  <item:farmersdelight:pie_crust>,
  <item:minecraft:honey_bottle>
];

for item in uncooked_ingredients {
  item.setFood(FoodProperties.create(1, 1)); 
}

// Prickly pears have spines - eating them raw hurts
<item:ecologics:prickly_pear>.setFood(
  FoodProperties.create(1, 1).addEffect(new MobEffectInstance(<mobeffect:minecraft:instant_damage>, 1, 0), 1.0)
);

// One step above ingredients, but still not great
// Cooking is basically free.
var cooked_ingredients = [
  <item:minecraft:golden_carrot>,
  <item:minecraft:baked_potato>,
  <item:minecraft:cooked_rabbit>,
  <item:minecraft:cooked_cod>,
  <item:minecraft:cooked_salmon>,
  <item:minecraft:bread>,
  <item:minecraft:cooked_beef>,
  <item:minecraft:cooked_chicken>,
  <item:minecraft:cooked_porkchop>,
  <item:minecraft:cooked_mutton>,
  <item:alexsmobs:cooked_catfish>,
  <item:alexsmobs:cooked_lobster_tail>,
  <item:alexsmobs:cooked_moose_ribs>,
  <item:alexsmobs:cooked_kangaroo_meat>,
  <item:corn_delight:popcorn>,
  <item:corn_delight:grilled_corn>,
  <item:corn_delight:boiled_corn>,
  <item:ecologics:cooked_prickly_pear>,
  <item:farmersdelight:fried_egg>,
  <item:farmersdelight:tomato_sauce>,
  <item:farmersdelight:pumpkin_slice>,
  <item:farmersdelight:beef_patty>,
  <item:farmersdelight:cooked_bacon>,
  <item:berry_good:sweet_berry_mince>
];

for item in cooked_ingredients {
  item.setFood(FoodProperties.create(3, 1.25)); 
}

var lvl3 = [
    <item:create:honeyed_apple>
];

for item in lvl3 {
    item.setFood(FoodProperties.create(5, 1.25));
}

for item in <tag:items:farmersdelight:pies>.elements {
    <tag:items:farmersdelight:snacks>.add(item);
}

for item in <tag:items:farmersdelight:sweets>.elements {
    <tag:items:farmersdelight:snacks>.add(item);
}

for item in <tag:items:farmersdelight:drinks>.elements {
    <tag:items:farmersdelight:snacks>.add(item);
}

// meal overrides
var meals = [
    <item:largemeals:roasted_mutton_rack>
];

for meal in meals {
    <tag:items:farmersdelight:meals>.add(meal);
}

// snack overrides
var snacks = [
    <item:create:builders_tea>,
    <item:corn_delight:creamy_corn_drink>,
    <item:create:honeyed_apple>
];

for snack in snacks {
   <tag:items:farmersdelight:snacks>.add(snack);
}

// Use farmer's delight instead
craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.removeByName("minecraft:pumpkin_pie");

// Anything that restores at least 5 bars (10 points) of hunger and isn't a snack is a meal.
// Anything that restores at least 3 bars (6 points) of hunger and isn't a meal is a snack.
for item in game.items {
    if (item.food == null || item == <item:minecraft:suspicious_stew>) {
        // for some reason continue; breaks here, so I didn't use it
    } else if (item.food.nutrition >= 10 && !<tag:items:farmersdelight:snacks>.contains(item)) {
        <tag:items:farmersdelight:meals>.add(item);
    } else if (item.food.nutrition >= 6 && !<tag:items:farmersdelight:meals>.contains(item)) {
        <tag:items:farmersdelight:snacks>.add(item);
    }
}

// Tag anything with potion effects as $positive or $negative (mutually exclusive:
// an item with any negative effect only gets $negative, even if it also has positive effects)
for item in game.items {
    if (item.food != null && item.food.effects.length > 0) {
        var hasNegative = false;
        for effectEntry in item.food.effects {
            var effect = effectEntry.getFirst().getEffect();
            // Glowing is technically a "neutral" vanilla effect, but we treat it as positive
            if (!effect.beneficial && effect != <mobeffect:minecraft:glowing>) {
                hasNegative = true;
                break;
            }
        }

        if (hasNegative) {
            <tag:items:candybeast:detrimental_food>.add(item);
        } else {
            <tag:items:candybeast:beneficial_food>.add(item);
        }
    }
}
