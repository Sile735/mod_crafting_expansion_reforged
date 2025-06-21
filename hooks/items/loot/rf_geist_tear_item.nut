::mod_CER.HooksMod.hook("scripts/items/loot/rf_geist_tear_item", function(q){
	q.create = @( __original ) function() {
		__original();
		this.m.ItemType = this.m.ItemType | this.Const.Items.ItemType.Crafting;
	};

	q.getTooltip = @( __original ) function() {
		::logInfo("Crafting Expansion/adding tooltip");		

		local getNewTooltip = function(tooltip)
		{
		if (this.isItemType(this.Const.Items.ItemType.Crafting))
		{		

			local blueprintMatches = [];
			local scriptFiles = this.IO.enumerateFiles("scripts/crafting/blueprints/");

			foreach(scriptFile in scriptFiles)
			{
				local blueprint = this.new(scriptFile);

				foreach(b in blueprint.m.PreviewComponents)
				{
					if (b.Instance.m.ID == this.m.ID && !blueprintMatches.find(blueprint.m.PreviewCraftable.m.Name))
					{
						blueprintMatches.push(blueprint.m.PreviewCraftable.m.Name);
					}
				}
			}

			if (blueprintMatches.len() > 0)
			{
				local i = tooltip.len();
				tooltip.insert(i, 
					{
						id = "mod_CER_0",
						type = "hint",
						text = "Used in the crafting of the following:", 
					}
				);

				blueprintMatches.sort();
				for(local bp = 0; bp < blueprintMatches.len(); bp = ++bp)
				{
					tooltip.insert((i + bp + 1),
					{
						id = "mod_CER_" + (bp + 1),
						type = "hint",
						icon = "ui/icons/special.png",
						text = blueprintMatches[bp]
					});
				}
			}

					
				
			
		}

		return tooltip;
		};
		return getNewTooltip(__original());
	};
})