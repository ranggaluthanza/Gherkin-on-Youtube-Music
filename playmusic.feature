Feature : 	Play the music	

   As an user, I can play the music that I choose

	Background :
	Given User is on “https://music.youtube.com/”

	Scenario : Play a music without doing login
	   Given user is not logged in
	   When  user play a music
	   Then The music is playing 

	Scenario : Play a music with logged in user
	   Given user is logged in
	   When user play a music
	   Then the music is playing
	
	Scenario : Play a music with existing owner playlist
	   Given  a playlist named “Sad Songs”
   When Choose the playlist
   And Play a song
   Then the song is playing
	
	Scenario : Play a music with existing artist’s album
	   Given  an album named “Take me home”
	   And a song titled “Night Changes”
   When Search an album 
   And Play a song
   Then the song is playing

	Scenario : Play a music with existing recommendation playlist
	   Given  an album named “My Supermix”
	   And a song titled “Traitor
   When Choose the album
   And Play a song
   Then the music is playing

Scenario : Pause the played music
   Given the music is on playing
   When Click pause button
   Then the music is pausing

Scenario : Play the paused music
   Given the music in on pausing 
   When Click play button
   Then the music is playing 

Scenario : Go to previous song with the first song of the playlist
   Given a playlist named “Sad Songs”
   And play the first song of the playlist
   When Click the previous song button
   Then The music slider is back to the beginning

Scenario : Go to previous song with music is on playing
   Given a song is on playing
   When Click the previous song button
   Then The music slider is back to the beginning

Scenario : Go to previous song with the second song of the playlist
   Given a playlist named “Sad Songs”
   And play the second song of the playlist 
   When Click the previous song button
   Then The previous song of the playlist is playing

Scenario : Go to next song with the last song of the playlist and it’s the repeat off option
   Given a playlist named “Sad Songs”
   And play the last song of the playlist 
   And choose repeat off option 
   When Click the next song button
   Then The next song button can't be clicked

Scenario : Go to next song with the last song of the playlist and it’s the repeat off option
   Given a playlist named “Sad Songs”
   And play the last song of the playlist 
   And choose repeat off option 
   When Click the next song button
   Then The next song button can't be clicked

Scenario : Go to next song with the song is not the last song of the playlist
   Given a playlist named “Sad Songs”
   And play the first song of the playlist 
   When Click the next song button
   Then The song is playing

Scenario : Go to next song with the last song of the playlist and it’s the repeat all option
   Given a playlist named “Sad Songs”
   And play the last song of the playlist 
   And choose repeat all option 
   When Click the next song button
   Then The first song of the playlist is playing

Scenario : Go to next song with the last song of the playlist and it’s the repeat one option
   Given a playlist named “Sad Songs”
   And play the last song of the playlist 
   And choose repeat one option 
   When Click the next song button
   Then The next song button can't be clicked


Scenario : Choose repeat off option in a playlist
   Given a playlist named “Sad Songs”
   And play the last song of the playlist
   When Drag the slider to end of the song 
   And Wait for the song to finish
   Then The song is stopped

Scenario : Choose repeat all option in a playlist
   Given a playlist named “Sad Songs”
   And play the last song of the playlist
   When Drag the slider to end of the song 
   And Wait for the song to finish
   Then The first song of the playlist is playing

Scenario : Choose repeat one option in a playlist
   Given a playlist named “Sad Songs”
   And play the last song of the playlist
   When Drag the slider to end of the song 
   And Wait for the song to finish
   Then The player will play back the current song

Scenario : Lower the volume with the on playing song 
   Given  a song is on playing
   And the volume is on the highest volume
   When Hover the the speaker icon 
   And drag the volume slider to lower volume
   Then The music volume will lower than before

Scenario : Raise the volume to 100% with the on playing song
   Given  a song is on playing
   And the volume is not 100%
   When Hover the the speaker icon 
   And drag the volume slider to Highest volume
   Then The music volume will higher than before

Scenario : Mute the volume with the on playing song
   Given  a song is on playing
   And the volume is on unmute condition
   When click the speaker icon 
   Then The music volume is muted

Scenario : Unmute the volume with the on playing song
   Given  a song is on playing
   And the volume is on mute condition
   When click the speaker icon 
   Then The music volume is unmuted

Scenario : Skip the ads 
   Given play a random song
   And the ads will displayed randomly
   When Click skip ad button
   Then The ad is skipped
