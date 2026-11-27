// Recipe: upgrades the previous necklace (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_hexen_trophy_2_item_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_hexen_trophy_2_item";
		this.m.UpgradedItemID = "accessory.cer_hexen_trophy_1";
		this.m.PreviewCraftable = ::new("scripts/items/accessory/cer_hexen_trophy_2_item");
		this.m.Cost = 1000;
		local ingredients = [
			{
				Script = "scripts/items/accessory/cer_hexen_trophy_1_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/mysterious_herbs_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(::new("scripts/items/accessory/cer_hexen_trophy_2_item"));
	}
});
