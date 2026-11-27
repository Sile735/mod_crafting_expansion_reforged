// Crafting Expansion Reforged - preload / registration
// Adds new crafting recipes (scripts/crafting/blueprints, picked up by the game automatically) and a few hooks.

::mod_CER <- {
	ID = "mod_CER",
	Name = "Crafting Expansion Reforged",
	Version = "0.4.1",	// keep in sync with the GitHub release tag
	GitHubURL = "https://github.com/Sile735/mod_crafting_expansion_reforged"
};

local requiredMods = [
	"mod_msu",
	"mod_dynamic_perks",
	"mod_reforged",
	"mod_stack_based_skills"
];

::mod_CER.HooksMod <- ::Hooks.register(::mod_CER.ID, ::mod_CER.Version, ::mod_CER.Name);
::mod_CER.HooksMod.require(requiredMods);

// ">" means "load AFTER that mod" ("<" would mean BEFORE). Version constraints are stripped down to the mod ID.
local queueLoadOrder = [];
foreach (requirement in requiredMods)
{
	local idx = requirement.find(" ");
	queueLoadOrder.push(">" + (idx == null ? requirement : requirement.slice(0, idx)));
}

::mod_CER.HooksMod.queue(queueLoadOrder, function() {
	::mod_CER.Mod <- ::MSU.Class.Mod(::mod_CER.ID, ::mod_CER.Version, ::mod_CER.Name);

	// In-game "new version available" notification via MSU
	::mod_CER.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, ::mod_CER.GitHubURL);
	::mod_CER.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);
});

// Hooks are registered in the Late bucket so they wrap on top of Reforged's own changes.
::mod_CER.HooksMod.queue(queueLoadOrder, function() {
	::include("load.nut");
}, ::Hooks.QueueBucket.Late);
