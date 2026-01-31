this.wooden_sticks_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.wooden_sticks_blueprint";
		this.m.PreviewCraftable = this.new("scripts/items/weapons/wooden_stick");
		this.m.Cost = 10;
		local ingredients = [
			{
				Script = "scripts/items/trade/quality_wood_item",
				Num = 1
			}			

		];
		this.init(ingredients);
	}

	function getName()
	{
		return this.m.PreviewCraftable.getName() + " (x3)";	// We adjust the name of the recipe to communicate that you receive three of them
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/weapons/wooden_stick"));
		_stash.add(this.new("scripts/items/weapons/wooden_stick"));
		_stash.add(this.new("scripts/items/weapons/wooden_stick"));
	}

});