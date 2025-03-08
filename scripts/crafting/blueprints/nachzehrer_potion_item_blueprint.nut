this.nachzehrer_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.nachzehrer_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/nachzehrer_potion_item");
		this.m.Cost = 1250;
		local ingredients = [
			{
				Script = "scripts/items/misc/ghoul_brain_item",
				Num = 3
			},
			{
				Script = "scripts/items/misc/ghoul_horn_item",
				Num = 1
			}
		]
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/nachzehrer_potion_item"));
	}

});