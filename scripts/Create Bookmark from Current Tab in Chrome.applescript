(*
	
*)
tell application "Google Chrome"
	if active tab of front window exists then
		set active_tab to active tab of front window
		
		set tab_title to title of active_tab
		set tab_address to URL of active_tab
		
		tell application "Spillo"
			show create bookmark panel with properties {url:tab_address, title:tab_title}
		end tell
	end if
end tell