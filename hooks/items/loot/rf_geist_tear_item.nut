::ER.HookMod.hook("scripts/items/loot/rf_geist_tear_item", function(q){
	q.create = @( __original ) function() {
		__original();
		this.m.ItemType = this.m.ItemType | this.Const.Items.ItemType.Crafting;
	}
}