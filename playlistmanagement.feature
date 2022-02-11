Feature : Playlist Management 

   As an User, I want to manage my own playlist
	
	Scenario : Create playlist with logged in user
	   Given The user is logged in
	   And The playlist tittle is “ Sad Songs “
	   And the playlist description is “ This playlist just for sad song “
	   When Click library menu
	   And Click new playlist button
	   And Fill in the title field
	   And Fill in the description field
	   And Choose Public in Privacy option
	   Then The new playlist is created 
	   And Playlist can be searched by search menu
	   And Playlist can be viewed by link

	Scenario : Create playlist with Unlisted privacy option	
	   Given The user is logged in
	   And The playlist tittle is “ Happy Songs “
	   And the playlist description is “ This playlist just for Happy song “
	   When Click library menu
	   And Click new playlist button
	   And Fill in the title field
	   And Fill in the description field
	   And Choose Unlisted in Privacy option
	   Then The new playlist is created 
	   And Playlist can be viewed by link

	Scenario : Create playlist with Private privacy option	
	   Given The user is logged in
	   And The playlist tittle is “ Romance Songs “
	   And the playlist description is “ This playlist just for Romance song “
	   When Click library menu
	   And Click new playlist button
	   And Fill in the title field
	   And Fill in the description field
	   And Choose Private in Privacy option
	   Then The new playlist is created 
	   And Playlist can be viewed only by owner
	
	Scenario : Delete existing playlist	
	   Given The user is logged in
	   And The playlist tittle is “ Romance Songs “
	   When Click library menu
	   And Choose one of the playlist
	   And Click more action icon
	   And Click delete playlist
	   Then The new playlist is deleted

	Scenario : Add a song to existing playlist
	   Given The user is logged in
	   And The song title is “Polaroid Love”
	   And the playlist title is “ Sad Songs”
	   When Search a song
	   And Press Enter
	   And Click the song title
	   And Click more action
	   And Click add to playlist
	   And Choose one of the playlist
	   Then The song added to playlist


	Scenario : Remove a song from existing playlist 
	   Given The user is logged in 
	   And The song title is “Polaroid Love”
	   And the playlist title is “ Sad Songs”
	   When Click library menu
	   And Click one of the playlist
	   And Click the song title
	   And Click more action
	   And Click remove from playlist
	   Then The song removed from playlist

	Scenario : Create playlist without logged in user
	   Given The user is logged in
	   And The playlist tittle is “ Sad Songs “
	   And the playlist description is “ This playlist just for sad song “
	   When Click library menu
	   Then The library can't be opened 
	   And Direct to login page
