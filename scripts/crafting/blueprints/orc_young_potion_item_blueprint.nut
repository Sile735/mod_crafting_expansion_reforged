// Recipe: Young Orc potion: Kinetic Blows
// Young Orcs drop no crafting material: Berserker Mushrooms (orc ingredient) and Unhold Bones.
this.orc_young_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.orc_young_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/orc_young_potion_item");
		this.m.Cost = 1250;
		local ingredients = [
			{
				Script = "scripts/items/accessory/berserker_mushrooms_item",
				Num = 2
			},
			{
				Script = "scripts/items/misc/unhold_bones_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/orc_young_potion_item"));
	}

});
