this.fallen_hero_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.fallen_hero_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/fallen_hero_potion_item");
		this.m.Cost = 3500;
		local ingredients = [
			{
				Script = "scripts/items/misc/vampire_dust_item",
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
		_stash.add(this.new("scripts/items/misc/anatomist/fallen_hero_potion_item"));
	}

});