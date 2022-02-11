Feature : Like & Dislike the song

   As an user, I can like or dislike the songs
	
	Background : 
	   Given User is on playing a song
	   And There’s a music player bar floating

	Scenario : Give like to a song
	   Given User is logged in
	   When Click the like icon 
	   Then the song added to liked song list

	Scenario : Give dislike to a song
	   Given User is logged in
	   When Click the dislike icon
	   Then The disliked song is skipped and continue to the next song
		   
Scenario : Give dislike to a song without doing login
   Given User is not logged in
	   When Click the dislike icon
	   Then The disliked song is skipped and continue to the next song

Scenario : Give dislike to a song without doing login
   Given User is not logged in
	   When Click the dislike icon
	   Then The disliked song is skipped and continue to the next song
