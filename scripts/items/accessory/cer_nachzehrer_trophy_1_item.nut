// Nachzehrer Trophy Necklace +1: vanilla +4 Resolve and heals 3 hitpoints after each battle.
// Base: cer_nachzehrer_trophy_upgraded_item.
this.cer_nachzehrer_trophy_1_item <- ::inherit("scripts/items/accessory/cer_nachzehrer_trophy_upgraded_item", {
	m = {},
	function create()
	{
		this.cer_nachzehrer_trophy_upgraded_item.create();
		this.m.ID = "accessory.cer_nachzehrer_trophy_1";
		this.m.Name = "Nachzehrer Trophy Necklace +1";
		this.m.Description = "This necklace fashioned from trophies taken of various Nachzehrers declares the one wearing it a veteran of battle against feral beasts, and not easily daunted. Treated with preserved Nachzehrer flesh, it seems to quicken the wearer's recovery.";
		this.m.Icon = "accessory/cer_nachzehrer_trophy_1.png";
		this.m.Sprite = "cer_nachzehrer_trophy_1";
		this.m.Value = 800;
		this.m.HealAfterBattle = 3;
	}
});
