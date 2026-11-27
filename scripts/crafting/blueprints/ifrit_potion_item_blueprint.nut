// Recipe: Ifrit potion: Stone Skin
// Sulfurous Rocks are the Ifrit's own drop.
this.ifrit_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.ifrit_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/ifrit_potion_item");
		this.m.Cost = 3500;
		local ingredients = [
			{
				Script = "scripts/items/misc/sulfurous_rocks_item",
				Num = 3
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/ifrit_potion_item"));
	}

});
