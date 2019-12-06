tell application "Spotify"
	set CurrentArtist to get album artist of current track as string
	set CurrentAlbum to get album of current track as string
	set ArtistAndAlbum to CurrentArtist & " " & CurrentAlbum
end tell

tell application "Safari"
	get ArtistAndAlbum
	set DoubanMusicURL to "https://music.douban.com/subject_search?search_text=" & ArtistAndAlbum
	open location DoubanMusicURL
end tell
