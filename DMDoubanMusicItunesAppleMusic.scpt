tell application "Music"
	set {albuminfo, albumartist} to get {album, album artist} of current track
	set ArtistAndAlbum to albuminfo & " " & albumartist
	set ArtistAndAlbumencode to get do shell script "/usr/bin/python -c \"import urllib
print urllib.quote('" & ArtistAndAlbum & "')\""
	
end tell

tell application "Safari"
	get ArtistAndAlbum
	set DoubanMusicURL to "https://music.douban.com/subject_search?search_text=" & ArtistAndAlbumencode
	open location DoubanMusicURL
end tell
