    // Original stuff, just used to find the insert location
    IL_08fe:  ldarg.0
    IL_08ff:  call       instance void UIManager::UpdateMatterMoverPopup()
    IL_0904:  ldarg.0
    IL_0905:  call       instance void UIManager::UpdateLaserPowerPopup()
	
	// Actual new code
	          ldarg.0
	          call       instance void UIManager::UpdateLogicRecieverPopup()
