Feature : Search and Explore The Song

   As an User, I want to search and explore the song list

	Scenario : Search a song by the title of the song
	   Given the song title is “Traitor”
	   When Click search menu 
	   And Search the song title
	   And Press Enter
	   Then the song titled “Traitor” is displayed
	
	Scenario : Search a song by the lyrics of the song
	   Given the song title is “Even when the night changes”
	   When Click search menu 
	   And Search the song title
	   And Press Enter
	   Then the song is displayed 
	
	Scenario : Explore a music with Genre & Moods filter
	   Given The genre is “Pop”
	   When Click explore menu 
	   And Choose “Pop” Genre
	   Then The song list of Pop genre is displayed

