this.handgonne_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.handgonne_item";
		this.m.PreviewCraftable = this.new("scripts/items/weapons/oriental/handgonne");
		this.m.Cost = 700;
		local ingredients = [
			{
				Script = "scripts/items/misc/ancient_wood_item",
				Num = 1
			},
			{
				Script = "scripts/items/tools/fire_bomb_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/weapons/oriental/handgonne"));
	}

});