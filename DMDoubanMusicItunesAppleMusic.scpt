tell application "iTunes"
	-- get {name, artist, album} of current track
	set ArtistAndAlbum to get {album, album artist} of current track
end tell

tell application "Google Chrome"
	get ArtistAndAlbum
	set DoubanMusicURL to "https://music.douban.com/subject_search?search_text=" & ArtistAndAlbum
	open location DoubanMusicURL
	-- tell window 1
	-- set current tab to (make new tab with properties {URL:yoURL})
	--end tell
end tell
