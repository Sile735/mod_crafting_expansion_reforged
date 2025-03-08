::mods_registerMod("mod_CER", 1.02, "Crafting Expansion Reforged");
::mods_queue("mod_CER", null, function()
{
	local getNewTooltip = function(tooltip)
	{
		if (this.isItemType(this.Const.Items.ItemType.Crafting))
		{
			for(local i = 0; i < tooltip.len(); i = ++i)
			{
				if (tooltip[i].text == "Can be used to craft items")
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
						if ("icon" in tooltip[i]) delete tooltip[i].icon;
						tooltip[i].id = "mod_CER_0";
						tooltip[i].text = "Used in the crafting of the following:";

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

					break;
				}
			}
		}

		return tooltip;
	};

    ::mods_hookBaseClass("items/item", function(o)
    {
		while(!("getTooltip" in o)) o = o[o.SuperName];
		local getTooltip = o.getTooltip;
		o.getTooltip = function()
		{
			return getNewTooltip(getTooltip());
		}
    });
});
