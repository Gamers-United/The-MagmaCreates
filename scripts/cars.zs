#generator
craftingTable.removeByName("car:generator");
mods.jei.JEI.hideItem(<item:car:generator>);

#fuel details
mods.jei.JEI.addInfo(<item:car:bio_diesel_bucket>, ["Produced by a Split Tank"]);
mods.jei.JEI.addInfo(<item:car:glycerin_bucket>, ["Produced by a Split Tank"]);
mods.jei.JEI.addInfo(<item:car:canola_methanol_mix_bucket>, ["Produced by a Backmix Reactor"]);
mods.jei.JEI.addInfo(<item:car:methanol_bucket>, ["Produced by a Blast Furnace"]);
mods.jei.JEI.addInfo(<item:car:canola_oil_bucket>, ["Produced by a Oil Mill"]);

#block/item details
mods.jei.JEI.addInfo(<item:car:oilmill>, ["Uses Canola to produce Oil"]);
mods.jei.JEI.addInfo(<item:car:blastfurnace>, ["Uses Logs to produce Methanol"]);
mods.jei.JEI.addInfo(<item:car:backmix_reactor>, ["Uses Methanol and Oil to produce Canola Methanol Mix"]);
mods.jei.JEI.addInfo(<item:car:split_tank>, ["Converts Canola Methanol Mix to Bio Diesel (Fuel) and Glycerin"]);
mods.jei.JEI.addInfo(<item:car:gas_station>, ["The most elegant way to fuel your car. Pipe in Bio Diesel to use"]);
mods.jei.JEI.addInfo(<item:car:license_plate>, ["Required for the car to be road legal!"]);

#dynamo
var iingot = <tag:items:forge:ingots/iron>.asIIngredient();
var rdust = <tag:items:forge:ores/redstone>.asIIngredient();
craftingTable.removeByName("car:dynamo");
craftingTable.addShaped("magma:dynamo", <item:car:dynamo>, [[iingot, <tag:items:forge:rods/iron>.asIIngredient(), iingot], [rdust, <item:immersiveengineering:coil_lv>, rdust], [iingot, iingot, iingot]]);

#remove fluid pipe
craftingTable.removeRecipe(<item:car:fluid_pipe>);
mods.jei.JEI.hideItem(<item:car:fluid_pipe>);
