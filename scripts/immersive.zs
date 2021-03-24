import crafttweaker.api.BracketHandlers;
#hide grabbags
mods.jei.JEI.hideItem(<item:immersiveengineering:shader_bag_ie_masterwork>);
mods.jei.JEI.hideItem(<item:immersiveengineering:shader_bag_common>);
mods.jei.JEI.hideItem(<item:immersiveengineering:shader_bag_epic>);
mods.jei.JEI.hideItem(<item:immersiveengineering:shader_bag_uncommon>);
mods.jei.JEI.hideItem(<item:immersiveengineering:shader_bag_rare>);

#hide liquids
mods.jei.JEI.hideItem(<item:immersiveengineering:biodiesel_bucket>);
mods.jei.JEI.hideItem(<item:immersiveengineering:ethanol_bucket>);
mods.jei.JEI.hideItem(<item:immersiveengineering:herbicide_bucket>);

#core sample drill, excavator
mods.jei.JEI.hideItem(<item:immersiveengineering:sample_drill>);
craftingTable.removeByName("immersiveengineering:crafting/sample_drill");

#remove radiator blocks
mods.jei.JEI.hideItem(<item:immersiveengineering:radiator>);
craftingTable.removeByName("immersiveengineering:crafting/radiator");

#hammer to disable multiblocks
var iingot = <tag:items:forge:ingots/iron>.asIIngredient();
var strings = <tag:items:forge:string>.asIIngredient();
var wstick = <tag:items:forge:rods/wooden>.asIIngredient();
var air = <item:minecraft:air>;
craftingTable.removeByName("immersiveengineering:crafting/hammer");
var hammer = <item:immersiveengineering:hammer>.withTag({multiblockInterdiction: ["IE:Lightningrod", "IE:Excavator", "IE:AutoWorkbench", "IE:BottlingMachine", "IE:Refinery", "IE:Fermenter", "IE:Assembler"]});
craftingTable.addShaped("",hammer, [[air, iingot, strings], [air, wstick, iingot], [wstick, air, air]]);

#thermoelectric generator
craftingTable.removeByName("immersiveengineering:crafting/thermoelectric_generator");
mods.jei.JEI.hideItem(<item:immersiveengineering:thermoelectric_generator>);

#capacitors/energy storage
craftingTable.removeByName("immersiveengineering:crafting/capacitor_lv");
mods.jei.JEI.hideItem(<item:immersiveengineering:capacitor_lv>);
craftingTable.removeByName("immersiveengineering:crafting/capacitor_mv");
mods.jei.JEI.hideItem(<item:immersiveengineering:capacitor_mv>);
craftingTable.removeByName("immersiveengineering:crafting/capacitor_hv");
mods.jei.JEI.hideItem(<item:immersiveengineering:capacitor_hv>);

#remove all conveyors
var convList = ["conveyor_basic", "conveyor_redstone", "conveyor_dropper", "conveyor_vertical", "conveyor_splitter", "conveyor_covered", "conveyor_droppercovered", "conveyor_verticalcovered", "conveyor_extractcovered", "conveyor_splittercovered"] as string[];
for item in convList {
    val thing = BracketHandlers.getItem("immersiveengineering:"+item);
    craftingTable.removeRecipe(thing);
    mods.jei.JEI.hideItem(thing);
}

#remove fluid pipe
craftingTable.removeRecipe(<item:immersiveengineering:fluid_pipe>);
mods.jei.JEI.hideItem(<item:immersiveengineering:fluid_pipe>);

#add tooltip to book and hammer regarding removed machines
hammer.addTooltip("Warning! Machines disabled: Lightning Rod, Excavator, AutoWorkbench, Bottling Machine, Refinery, Fermenter, Assembler");
<item:immersiveengineering:manual>.addTooltip("Warning! Machines disabled: Lightning Rod, Excavator, AutoWorkbench, Bottling Machine, Refinery, Fermenter, Assembler");

#example code
#   mods.jei.JEI.hideItem(<>);
#   craftingTable.removeByName("");

