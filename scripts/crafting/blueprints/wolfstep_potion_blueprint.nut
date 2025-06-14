this.wolfstep_potion_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.wolfstep_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/wolfstep_potion_item");
		this.m.Cost = 2500;
		local ingredients = [
			{
				Script = "scripts/items/misc/adrenaline_gland_item",
				Num = 2
			},
			{
				Script = "scripts/items/misc/werewolf_pelt_item",
				Num = 1
			}			

		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/wolfstep_potion_item"));
	}

});