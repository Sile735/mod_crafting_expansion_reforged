this.goblin_grunt_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.goblin_grunt_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/goblin_grunt_potion_item");
		this.m.Cost = 2500;
		local ingredients = [
			{
				Script = "scripts/items/misc/acidic_saliva_item",
				Num = 3
			},
			{
				Script = "scripts/items/misc/ghoul_brain_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/goblin_grunt_potion_item"));
	}

});