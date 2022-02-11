Feature : 	Login to youtube music	

   As an user, I can login to youtube music website

	Background :
	Given User open “https://music.youtube.com/”
	
	Scenario : Open the URL for the first time
	   Given User is not logged in
	   When  User open the URL
	   Then The page is opened with a question to choose 5 favourite artists
	
	Scenario : Open the URL for the first time with chrome 
	   Given Chrome browser already has a google account
	   When User open the URL
	   Then The page is opened with a question to choose 5 favourite artists

	Scenario : Login with existing google account
	   Given User is not logged in
	   When Click login button
	   And The page direct to google account login
	   And User can choose the existing google account to login 
	   Then Login Success
