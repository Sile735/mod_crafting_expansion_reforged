// Base class for the upgraded Hexen Trophy Necklaces (+1/+2/+3, crafted in the Taxidermist).
// Same as vanilla's Hexen Trophy Necklace (+6 Resolve) plus BonusResolve. Child classes set the tier data.
// Art: tinted copies of the vanilla necklace (gfx/ui/items/accessory/cer_hexen_trophy_*.png and
// the worn sprites in brushes/cer_trophies.brush).
this.cer_hexen_trophy_upgraded_item <- ::inherit("scripts/items/accessory/hexen_trophy_item", {
	m = {
		BaseResolve = 6,	// vanilla hexen_trophy_item value, only used for the tooltip
		BonusResolve = 0	// extra Resolve on top of the vanilla necklace
	},

	function getTooltip()
	{
		local ret = this.hexen_trophy_item.getTooltip();
		foreach (entry in ret)
		{
			// Vanilla's "+6 Resolve" line: show the total instead
			if (entry.id == 10)
				entry.text = ::MSU.Text.colorPositive("+" + (this.m.BaseResolve + this.m.BonusResolve)) + " Resolve";
		}
		return ret;
	}

	function onUpdateProperties( _properties )
	{
		this.hexen_trophy_item.onUpdateProperties(_properties);	// vanilla +6
		_properties.Bravery += this.m.BonusResolve;
	}
});
