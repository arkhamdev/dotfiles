(* Get the playing song from Spotify or iTunes*)
if application "Spotify" is running then
    tell application "Spotify"
        set currentArtist to artist of current track as string
        set currentTrack to name of current track as string

        return "♬ " & currentTrack & " - " & currentArtist
    end tell
else if application "iTunes" is running then
    tell application "iTunes"
        if exists current track then
            set currentArtist to artist of current track as string
            set currentTrack to name of current track as string

            return "♬ " & currentTrack & " - " & currentArtist
        end if
    end tell
end if
