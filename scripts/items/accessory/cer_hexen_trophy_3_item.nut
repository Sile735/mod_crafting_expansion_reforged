// Hexen Trophy Necklace +3: +9 Resolve (vanilla +6, +3). Base: cer_hexen_trophy_upgraded_item.
this.cer_hexen_trophy_3_item <- ::inherit("scripts/items/accessory/cer_hexen_trophy_upgraded_item", {
	m = {},
	function create()
	{
		this.cer_hexen_trophy_upgraded_item.create();
		this.m.ID = "accessory.cer_hexen_trophy_3";
		this.m.Name = "Hexen Trophy Necklace +3";
		this.m.Description = "This necklace fashioned from trophies taken of slain Hexen declares the one wearing it a veteran of battle against vile sorcery, and not easily daunted. So many hexen remains have been bound into it that a faint glow surrounds it at night.";
		this.m.Icon = "accessory/cer_hexen_trophy_3.png";
		this.m.Sprite = "cer_hexen_trophy_3";
		this.m.Value = 3000;
		this.m.BonusResolve = 3;
	}
});
