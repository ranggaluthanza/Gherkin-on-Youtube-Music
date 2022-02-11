Feature : Shuffle the playlist 

   As an user, I want to shuffle my playlist order

	Background :
	   Given User is on playlist page named “Sad Songs”
	
	Scenario : Shuffle the existing playlist
	   When I click the shuffle button
	   Then the song order of playlist is shuffled
