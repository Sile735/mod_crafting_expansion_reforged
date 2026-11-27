// Base class for "upgrade" recipes whose first ingredient is the item being upgraded
// (e.g. Hexen Trophy Necklace -> Hexen Trophy Necklace +1).
// Vanilla's Alchemist follower can keep an ingredient instead of consuming it (if the item's MagicNumber <= 25).
// For the upgraded item that would duplicate it, so the upgraded item is always consumed;
// the Alchemist still works normally for the other ingredients.
this.cer_upgrade_blueprint <- ::inherit("scripts/crafting/blueprint", {
	m = {
		UpgradedItemID = null	// item ID of the ingredient that is upgraded (always consumed)
	},

	function craft()
	{
		// Temporarily raise the MagicNumber of every matching item in the stash so the Alchemist never keeps it
		local changed = [];
		foreach (item in ::World.Assets.getStash().getItems())
		{
			if (item != null && item.getID() == this.m.UpgradedItemID)
			{
				changed.push([item, item.getMagicNumber()]);
				item.setMagicNumber(100);
			}
		}

		this.blueprint.craft();

		// Restore the items that were not consumed
		foreach (entry in changed)
		{
			entry[0].setMagicNumber(entry[1]);
		}
	}
});
