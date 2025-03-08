this.firelance_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.fire_lance_item";
		this.m.PreviewCraftable = this.new("scripts/items/weapons/oriental/firelance");
		this.m.Cost = 200;
		local ingredients = [
			{
				Script = "scripts/items/weapons/militia_spear",
				Num = 1
			},
			{
				Script = "scripts/items/tools/fire_bomb_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/weapons/oriental/firelance"));
	}

});