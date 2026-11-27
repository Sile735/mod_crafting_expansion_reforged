// Base class for the upgraded Nachzehrer Trophy Necklaces (+1/+2, crafted in the Taxidermist).
// Same as vanilla's Nachzehrer Trophy Necklace (+4 Resolve) and additionally heals the wearer
// HealAfterBattle hitpoints at the end of every battle. Child classes set the tier data.
// Art: tinted copies of the vanilla necklace (gfx/ui/items/accessory/cer_nachzehrer_trophy_*.png and
// the worn sprites in brushes/cer_trophies.brush).
this.cer_nachzehrer_trophy_upgraded_item <- ::inherit("scripts/items/accessory/ghoul_trophy_item", {
	m = {
		HealAfterBattle = 0	// hitpoints healed after each battle
	},

	function getTooltip()
	{
		local ret = this.ghoul_trophy_item.getTooltip();
		ret.push({
			id = 11,
			type = "text",
			icon = "ui/icons/health.png",
			text = "Heals " + ::MSU.Text.colorPositive(this.m.HealAfterBattle) + " Hitpoints after each battle"
		});
		return ret;
	}

	function onCombatFinished()
	{
		this.ghoul_trophy_item.onCombatFinished();

		if (this.getContainer() == null)
			return;

		local actor = this.getContainer().getActor();
		if (actor == null || actor.isNull() || !actor.isAlive())
			return;

		// Never heal above maximum hitpoints
		actor.setHitpoints(::Math.min(actor.getHitpointsMax(), actor.getHitpoints() + this.m.HealAfterBattle));
		actor.setDirty(true);
	}
});
