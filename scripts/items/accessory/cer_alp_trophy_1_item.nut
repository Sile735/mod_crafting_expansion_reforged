// Alp Trophy Necklace +1: vanilla +5 Resolve, plus +10% Resolve against mental attacks
// (morale checks of type ::Const.MoraleCheckType.MentalAttack: Alp nightmares/sleep, Hexe charm, Geist horror ...).
// Art: ethereal, glowing version of the vanilla necklace (gfx/ui/items/accessory/cer_alp_trophy_1.png and
// the worn sprites in brushes/cer_trophies.brush).
this.cer_alp_trophy_1_item <- ::inherit("scripts/items/accessory/alp_trophy_item", {
	m = {
		MentalAttackResolveMult = 1.1	// multiplier for Resolve in mental attack morale checks
	},

	function create()
	{
		this.alp_trophy_item.create();
		this.m.ID = "accessory.cer_alp_trophy_1";
		this.m.Name = "Alp Trophy Necklace +1";
		this.m.Description = "Bound with the remains of several Alps, this necklace seems to shimmer faintly in the dark. Its wearer sleeps without dreams and shrugs off the whispers that break the minds of others.";
		this.m.Icon = "accessory/cer_alp_trophy_1.png";
		this.m.Sprite = "cer_alp_trophy_1";
		this.m.Value = 2500;
	}

	function getTooltip()
	{
		local ret = this.alp_trophy_item.getTooltip();	// includes vanilla's +5 Resolve line
		ret.push({
			id = 11,
			type = "text",
			icon = "ui/icons/bravery.png",
			text = ::MSU.Text.colorPositive("+" + ::Math.round((this.m.MentalAttackResolveMult - 1.0) * 100) + "%") + " Resolve against mental attacks (fear and mind control)"
		});
		return ret;
	}

	function onUpdateProperties( _properties )
	{
		this.alp_trophy_item.onUpdateProperties(_properties);	// vanilla +5 Resolve
		_properties.MoraleCheckBraveryMult[::Const.MoraleCheckType.MentalAttack] *= this.m.MentalAttackResolveMult;
	}
});
