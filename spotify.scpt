tell application "System Events"
	set processList to (name of every process)
end tell

if (processList contains "Spotify") is true then
	tell application "Spotify"
		set artistName to artist of current track
		set trackName to name of current track
		set symbol to "◻︎"
		set col to "red"
		
		if player state is playing then
			set symbol to "▹"
			set col to "green"
		end if
		
		return "#[fg=" & col & "]" & symbol & " #[fg=colour10]" & artistName & " - " & trackName & " #[fg=colour10] "
	end tell
end if
