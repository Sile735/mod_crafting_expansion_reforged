this.webknecht_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.webknecht_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/webknecht_potion_item");
		this.m.Cost = 1250;
		local ingredients = [
			{
				Script = "scripts/items/misc/poison_gland_item",
				Num = 4
			},
			{
				Script = "scripts/items/misc/adrenaline_gland_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/webknecht_potion_item"));
	}

});