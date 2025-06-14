this.wolfstep_potion_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.wolfstep_potion";
		this.m.Name = "Wolf's Agility";
		this.m.Icon = "ui/perks/perk_23.png";
		this.m.IconMini = "ui/perks/perk_23.png";
		this.m.Overlay = "status_effect_139";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = false;
		this.m.IsStacking = false;

	}

	function getDescription()
	{
		return "This character\'s muscles have mutated and respond differently to movement impulses. It can move with the agility of a wolf.";
	}

	function getTooltip()
	{
		local ret = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 11,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Grants the Pathfinder perk effect"
			},
			{
				id = 12,
				type = "hint",
				icon = "ui/tooltips/warning.png",
				text = "Further mutations will cause a longer period of sickness"
			}
		];
		return ret;
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		actor.m.ActionPointCosts = this.Const.PathfinderMovementAPCost;
		actor.m.FatigueCosts = clone this.Const.PathfinderMovementFatigueCost;
		actor.m.LevelActionPointCost = 0;
	}

});

