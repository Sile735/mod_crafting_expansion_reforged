// Recipe: upgrades the Alp Trophy Necklace (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_alp_trophy_1_item_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_alp_trophy_1_item";
		this.m.UpgradedItemID = "accessory.alp_trophy";
		this.m.PreviewCraftable = ::new("scripts/items/accessory/cer_alp_trophy_1_item");
		this.m.Cost = 5000;
		local ingredients = [
			{
				Script = "scripts/items/accessory/alp_trophy_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/third_eye_item",
				Num = 2
			},
			{
				Script = "scripts/items/misc/petrified_scream_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/parched_skin_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(::new("scripts/items/accessory/cer_alp_trophy_1_item"));
	}
});
