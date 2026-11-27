// Recipe: upgrades the previous necklace (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_nachzehrer_trophy_1_item_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_nachzehrer_trophy_1_item";
		this.m.UpgradedItemID = "accessory.ghoul_trophy";
		this.m.PreviewCraftable = ::new("scripts/items/accessory/cer_nachzehrer_trophy_1_item");
		this.m.Cost = 1000;
		local ingredients = [
			{
				Script = "scripts/items/accessory/ghoul_trophy_item",
				Num = 1
			},
			{
				Script = "scripts/items/misc/ghoul_brain_item",
				Num = 3
			},
			{
				Script = "scripts/items/misc/ghoul_horn_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(::new("scripts/items/accessory/cer_nachzehrer_trophy_1_item"));
	}
});
