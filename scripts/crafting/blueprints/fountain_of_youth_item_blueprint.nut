this.fountain_of_youth_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.foutain_of_youth_item";
		this.m.PreviewCraftable = this.new("scripts/items/special/fountain_of_youth_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/tools/holy_water_item",
				Num = 1
			},
			{
				Script = "scripts/items/loot/rf_geist_tear_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/glowing_resin_item",
				Num = 2
			},			

		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/special/fountain_of_youth_item"));
	}

});