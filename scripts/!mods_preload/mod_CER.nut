#::mods_registerMod("mod_CER", 1.02, "Crafting Expansion Reforged");
::mod_CER <- {
	ID = "mod_CER",
	Name = "Crafting Expansion Reforged",
	Version = "0.2.0",
	// GitHubURL = "https://github.com/YOURNAME/mod_MODID",
}

local requiredMods = [
    "mod_dynamic_perks",
    "mod_reforged",
    "mod_stack_based_skills"    
];
::mod_CER.HooksMod <- ::Hooks.register(::mod_CER.ID, ::mod_CER.Version, ::mod_CER.Name);
::mod_CER.HooksMod.require(requiredMods);
local queueLoadOrder = [];
foreach (requirement in requiredMods)
{
	local idx = requirement.find(" ");
	queueLoadOrder.push("<" + (idx == null ? requirement : requirement.slice(0, idx)));
}
::mod_CER.HooksMod.queue(queueLoadOrder, function() {
	::mod_CER.Mod <- ::MSU.Class.Mod(::mod_CER.ID, ::mod_CER.Version, ::mod_CER.Name);
});

::mod_CER.HooksMod.queue(queueLoadOrder, function() {
    ::include("load.nut");
}, ::Hooks.QueueBucket.Late);

