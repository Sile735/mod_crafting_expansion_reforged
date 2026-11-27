// Recipe: upgrades the previous necklace (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_hexen_trophy_1_item_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_hexen_trophy_1_item";
		this.m.UpgradedItemID = "accessory.hexen_trophy";
		this.m.PreviewCraftable = ::new("scripts/items/accessory/cer_hexen_trophy_1_item");
		this.m.Cost = 500;
		local ingredients = [
			{
				Script = "scripts/items/accessory/hexen_trophy_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/witch_hair_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(::new("scripts/items/accessory/cer_hexen_trophy_1_item"));
	}
});
