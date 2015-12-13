    // Original stuff, just used to find the insert location
    IL_045e:  ldarg.0
    IL_045f:  call       instance void UIManager::UpdateMatterMoverPopup()
    IL_0464:  ldarg.0
    IL_0465:  call       instance void UIManager::UpdateLaserPowerPopup()
	
	// Actual new code
	          ldarg.0
	          call       instance void UIManager::UpdateLogicRecieverPopup()
