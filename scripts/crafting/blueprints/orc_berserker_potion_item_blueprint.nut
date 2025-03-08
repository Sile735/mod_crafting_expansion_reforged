this.orc_berserker_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.orc_berserker_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/orc_berserker_potion_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/accessory/berserker_mushrooms_item",
				Num = 4
			},
			{
				Script = "scripts/items/misc/adrenaline_gland_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/orc_berserker_potion_item"));
	}

});
