this.schrat_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.schrat_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/schrat_potion_item");
		this.m.Cost = 2500;
		local ingredients = [
			{
				Script = "scripts/items/misc/glowing_resin_item",
				Num = 2
			}, 
			{
				Script = "scripts/items/misc/heart_of_the_forest_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/schrat_potion_item"));
	}

});