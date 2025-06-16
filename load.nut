//::include("mod_MODID/some_priority_script");	// This file needs priority
::logInfo("Crafting Expansion Loading");
::includeFiles(::IO.enumerateFiles("hooks"));		// This will load and execute all hooks

