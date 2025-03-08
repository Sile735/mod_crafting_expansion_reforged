this.orc_warlord_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.orc_warlord_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/orc_warlord_potion_item");
		this.m.Cost = 3500;
		local ingredients = [
			{
				Script = "scripts/items/misc/unhold_heart_item",
				Num = 2
			},
			{
				Script = "scripts/items/misc/petrified_scream_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/orc_warlord_potion_item"));
	}

});