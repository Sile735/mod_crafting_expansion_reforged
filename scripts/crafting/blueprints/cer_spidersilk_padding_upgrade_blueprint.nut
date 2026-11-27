// Recipe: upgrades a Light Padding Replacement (always consumed, see scripts/crafting/cer_upgrade_blueprint.nut)
this.cer_spidersilk_padding_upgrade_blueprint <- ::inherit("scripts/crafting/cer_upgrade_blueprint", {
	m = {},
	function create()
	{
		this.cer_upgrade_blueprint.create();
		this.m.ID = "blueprint.cer_spidersilk_padding_upgrade";
		this.m.UpgradedItemID = "armor_upgrade.light_padding_replacement";
		this.m.PreviewCraftable = ::new("scripts/items/armor_upgrades/cer_spidersilk_padding_upgrade");
		this.m.Cost = 1000;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/light_padding_replacement_upgrade",
				Num = 1
			},
			{
				Script = "scripts/items/misc/spider_silk_item",
				Num = 4
			},
			{
				Script = "scripts/items/misc/poison_gland_item",
				Num = 2
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(::new("scripts/items/armor_upgrades/cer_spidersilk_padding_upgrade"));
	}
});
