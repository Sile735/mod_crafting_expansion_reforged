this.goblin_poison_item_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.poison_item";
		this.m.PreviewCraftable = this.new("scripts/items/accessory/poison_item");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/misc/poison_gland_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/acidic_saliva_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/accessory/poison_item"));
		_stash.add(this.new("scripts/items/accessory/poison_item"));
	}

});