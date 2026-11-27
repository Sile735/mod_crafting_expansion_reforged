// Recipe: upgrades the previous necklace (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_hexen_trophy_3_item_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_hexen_trophy_3_item";
		this.m.UpgradedItemID = "accessory.cer_hexen_trophy_2";
		this.m.PreviewCraftable = ::new("scripts/items/accessory/cer_hexen_trophy_3_item");
		this.m.Cost = 2000;
		local ingredients = [
			{
				Script = "scripts/items/accessory/cer_hexen_trophy_2_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/witch_hair_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/poisoned_apple_item",
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
		_stash.add(::new("scripts/items/accessory/cer_hexen_trophy_3_item"));
	}
});
