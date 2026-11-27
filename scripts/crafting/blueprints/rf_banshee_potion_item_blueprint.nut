// Recipe: Potion of Serenity (Reforged, Banshee): Serene Mind
// Banshees drop Geist Tears; Petrified Scream (Alp) for the fear theme.
this.rf_banshee_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.rf_banshee_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/rf_banshee_potion_item");
		this.m.Cost = 2500;
		local ingredients = [
			{
				Script = "scripts/items/loot/rf_geist_tear_item",
				Num = 2
			},
			{
				Script = "scripts/items/misc/petrified_scream_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/rf_banshee_potion_item"));
	}

});
