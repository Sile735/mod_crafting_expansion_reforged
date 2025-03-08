this.geist_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.geist_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/geist_potion_item");
		this.m.Cost = 1250;
		local ingredients = [
			{
				Script = "scripts/items/misc/ghoul_horn_item",
				Num = 3
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
		_stash.add(this.new("scripts/items/misc/anatomist/geist_potion_item"));
	}

});