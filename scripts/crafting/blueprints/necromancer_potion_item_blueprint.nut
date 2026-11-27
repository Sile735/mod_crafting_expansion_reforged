// Recipe: Necromancer potion: Visions
// Necromancers drop no crafting material: undead dust and Hexe herbs stand in for the dark arts.
this.necromancer_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.necromancer_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/necromancer_potion_item");
		this.m.Cost = 1250;
		local ingredients = [
			{
				Script = "scripts/items/misc/vampire_dust_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/mysterious_herbs_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/necromancer_potion_item"));
	}

});
