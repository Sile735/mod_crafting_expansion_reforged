// Geist Tear (Reforged loot) becomes a crafting ingredient (used by the Geist potion recipe).
// The "Can be used to craft items" tooltip list is added by Reforged for every ingredient.
::mod_CER.HooksMod.hook("scripts/items/loot/rf_geist_tear_item", function(q) {
	q.create = @(__original) { function create()
	{
		__original();
		this.m.ItemType = this.m.ItemType | ::Const.Items.ItemType.Crafting;
	}}.create;
});
