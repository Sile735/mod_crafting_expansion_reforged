// Hexen Trophy Necklace +1: +7 Resolve (vanilla +6, +1). Base: cer_hexen_trophy_upgraded_item.
this.cer_hexen_trophy_1_item <- ::inherit("scripts/items/accessory/cer_hexen_trophy_upgraded_item", {
	m = {},
	function create()
	{
		this.cer_hexen_trophy_upgraded_item.create();
		this.m.ID = "accessory.cer_hexen_trophy_1";
		this.m.Name = "Hexen Trophy Necklace +1";
		this.m.Description = "This necklace fashioned from trophies taken of slain Hexen declares the one wearing it a veteran of battle against vile sorcery, and not easily daunted. Further hexen remains have been woven into it.";
		this.m.Icon = "accessory/cer_hexen_trophy_1.png";
		this.m.Sprite = "cer_hexen_trophy_1";
		this.m.Value = 1000;
		this.m.BonusResolve = 1;
	}
});
