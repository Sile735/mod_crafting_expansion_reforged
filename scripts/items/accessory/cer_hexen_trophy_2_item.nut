// Hexen Trophy Necklace +2: +8 Resolve (vanilla +6, +2). Base: cer_hexen_trophy_upgraded_item.
this.cer_hexen_trophy_2_item <- ::inherit("scripts/items/accessory/cer_hexen_trophy_upgraded_item", {
	m = {},
	function create()
	{
		this.cer_hexen_trophy_upgraded_item.create();
		this.m.ID = "accessory.cer_hexen_trophy_2";
		this.m.Name = "Hexen Trophy Necklace +2";
		this.m.Description = "This necklace fashioned from trophies taken of slain Hexen declares the one wearing it a veteran of battle against vile sorcery, and not easily daunted. Layer upon layer of hexen remains make it hum faintly with old malice.";
		this.m.Icon = "accessory/cer_hexen_trophy_2.png";
		this.m.Sprite = "cer_hexen_trophy_2";
		this.m.Value = 1750;
		this.m.BonusResolve = 2;
	}
});
