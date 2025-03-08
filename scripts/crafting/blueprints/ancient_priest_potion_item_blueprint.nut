this.ancient_priest_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.ancient_priest_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/ancient_priest_potion_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/misc/lindwurm_blood_item",
				Num = 2
			},			
			{
				Script = "scripts/items/misc/ancient_wood_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/ancient_priest_potion_item"));
	}

});