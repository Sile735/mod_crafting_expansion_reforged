this.potion_of_oblivion_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.potion_of_oblivion";
		this.m.PreviewCraftable = this.new("scripts/items/misc/potion_of_oblivion_item");
		this.m.Cost = 500;
		local ingredients = [
			{
				Script = "scripts/items/misc/poisoned_apple_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/unhold_heart_item",
				Num = 1
			}		
			
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/potion_of_oblivion_item"));
	}

});
