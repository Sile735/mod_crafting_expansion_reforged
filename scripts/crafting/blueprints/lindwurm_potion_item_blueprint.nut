this.lindwurm_potion_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.lindwurm_potion_item";
		this.m.PreviewCraftable = this.new("scripts/items/misc/anatomist/lindwurm_potion_item");
		this.m.Cost = 2500;
		local ingredients = [
			{
				Script = "scripts/items/misc/lindwurm_blood_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/misc/anatomist/lindwurm_potion_item"));
	}

});