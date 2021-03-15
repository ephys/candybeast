// Disable all recipes for sponge replace with slimeball * 8 + minecraft:sponge

var slimeball = <tag:items:forge:slimeballs>; // could not find forge
var sponge = <item:minecraft:sponge>;

craftingTable.removeRecipe(<item:simplesponge:sponge>);

craftingTable.addShaped('candy_obsponge', <item:simplesponge:sponge>, [
	[slimeball, slimeball, slimeball],
	[slimeball, sponge, slimeball],
	[slimeball, slimeball, slimeball]
]);

// Disable rod of the skies

craftingTable.removeRecipe(<item:botania:tornado_rod>);

craftingTable.removeRecipe(<item:betterhorsearmor:netherite_horse_armor>);

// Disable waystones

craftingTable.removeRecipe(<item:waystones:waystone>);
craftingTable.removeRecipe(<item:waystones:sandy_waystone>);
craftingTable.removeRecipe(<item:waystones:mossy_waystone>);
craftingTable.removeRecipe(<item:waystones:warp_scroll>);
mods.jei.JEI.hideItem(<item:waystones:warp_scroll>);
craftingTable.removeRecipe(<item:waystones:warp_stone>);
mods.jei.JEI.hideItem(<item:waystones:warp_stone>);

// remove rotten flesh to leather
// thermal:machine/furnace/furnace_rotten_flesh_to_leather

<recipetype:thermal:furnace>.removeRecipe(<item:minecraft:leather>);