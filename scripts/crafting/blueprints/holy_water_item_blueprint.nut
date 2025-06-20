this.holy_water_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.holy_water_item";
		this.m.PreviewCraftable = this.new("scripts/items/tools/holy_water_item");
		this.m.Cost = 350;
		local ingredients = [
			{
				Script = "scripts/items/misc/serpent_skin_item",
				Num = 1
			},
			{
				Script = "scripts/items/loot/rf_geist_tear_item",
				Num = 2
			}			

		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/tools/holy_water_item"));
	}

});