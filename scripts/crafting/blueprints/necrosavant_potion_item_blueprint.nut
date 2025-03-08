this.necrosavant_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.necrosavant_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/necrosavant_potion_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/misc/vampire_dust_item",
				Num = 6
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
		_stash.add(this.new("scripts/items/misc/anatomist/necrosavant_potion_item"));
	}

});