// Spidersilk Padding Replacement: tier 2 of vanilla's Light Padding Replacement.
// Reduces the armor's penalty to Maximum Fatigue by 30% (vanilla Light Padding: 20%) and adds +10 Durability.
// Crafted by upgrading a (loose) Light Padding Replacement, see
// scripts/crafting/blueprints/cer_spidersilk_padding_upgrade_blueprint.nut.
// Art: silk-white / poison-green version of the Light Padding art (gfx/ui/items/armor_upgrades/*cer_spidersilk_padding*.png
// and the sprites drawn on the armor in brushes/cer_armor_upgrades.brush).
this.cer_spidersilk_padding_upgrade <- ::inherit("scripts/items/armor_upgrades/light_padding_replacement_upgrade", {
	m = {
		FatigueReduction = 0.3	// share of the armor's Maximum Fatigue penalty that is removed
	},

	function create()
	{
		this.light_padding_replacement_upgrade.create();
		this.m.ID = "armor_upgrade.cer_spidersilk_padding";
		this.m.Name = "Spidersilk Padding Replacement";
		this.m.Description = "Woven from layer upon layer of webknecht silk and still faintly glistening with their venom, this padding is even lighter than regular replacement padding and surprisingly tough.";
		this.m.ArmorDescription = "This armor has its padding replaced by a light and tough one woven from spider silk.";
		this.m.Icon = "armor_upgrades/cer_spidersilk_padding.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_cer_spidersilk_padding.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_cer_spidersilk_padding.png";
		this.m.SpriteBack = "cer_spidersilk_padding_back";
		this.m.SpriteDamagedBack = "cer_spidersilk_padding_back_damaged";
		this.m.SpriteCorpseBack = "cer_spidersilk_padding_back_dead";
		this.m.ConditionModifier = 10;
		this.m.Value = 1300;
	}

	function getTooltip()
	{
		// armor_upgrade's tooltip (title, description, image, value, "fuse" hint), without Light Padding's 20% line
		local ret = this.armor_upgrade.getTooltip();
		ret.extend([
			{
				id = 14,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "Reduces an armor\'s penalty to Maximum Fatigue by " + ::MSU.Text.colorNegative(::Math.round(this.m.FatigueReduction * 100) + "%")
			},
			{
				id = 15,
				type = "text",
				icon = "ui/icons/armor_body.png",
				text = ::MSU.Text.colorPositive("+" + this.m.ConditionModifier) + " Durability"
			}
		]);
		return ret;
	}

	// Shown on the armor the padding is fused to
	function onArmorTooltip( _result )
	{
		_result.push({
			id = 15,
			type = "text",
			icon = "ui/icons/armor_body.png",
			text = ::MSU.Text.colorPositive("+" + this.m.ConditionModifier) + " Durability"
		});
	}

	// Same as Light Padding, with a 30% reduction. armor_upgrade.onAdded applies StaminaModifier and ConditionModifier.
	function onAdded()
	{
		this.m.StaminaModifier = ::Math.floor(this.m.Armor.m.StaminaModifier * this.m.FatigueReduction);
		this.armor_upgrade.onAdded();
	}
});
