this.mysterious_jug_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.mysterious_jug";
		this.m.PreviewCraftable = this.new("scripts/items/special/trade_jug_01_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/misc/poisoned_apple_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/unhold_heart_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/ghoul_brain_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/poison_gland_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/heart_of_the_forest_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/petrified_scream_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/kraken_tentacle_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/special/trade_jug_01_item"));
	}

});
