// Nachzehrer Trophy Necklace +2: vanilla +4 Resolve and heals 5 hitpoints after each battle.
// Base: cer_nachzehrer_trophy_upgraded_item.
this.cer_nachzehrer_trophy_2_item <- ::inherit("scripts/items/accessory/cer_nachzehrer_trophy_upgraded_item", {
	m = {},
	function create()
	{
		this.cer_nachzehrer_trophy_upgraded_item.create();
		this.m.ID = "accessory.cer_nachzehrer_trophy_2";
		this.m.Name = "Nachzehrer Trophy Necklace +2";
		this.m.Description = "This necklace fashioned from trophies taken of various Nachzehrers declares the one wearing it a veteran of battle against feral beasts, and not easily daunted. Steeped in the essence of Nachzehrer, it lets the wearer's wounds close at an unsettling pace.";
		this.m.Icon = "accessory/cer_nachzehrer_trophy_2.png";
		this.m.Sprite = "cer_nachzehrer_trophy_2";
		this.m.Value = 1800;
		this.m.HealAfterBattle = 5;
	}
});
