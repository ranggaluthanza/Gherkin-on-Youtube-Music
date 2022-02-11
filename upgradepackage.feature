Feature : Upgrade Package to Premium 

   As an User, I want to upgrade my package to Premium 
	
	Background :
	   Given The user is logged in
	
	Scenario : Upgrade account to Premium with Gopay Payment method
	   Given Account has been integrated with Gopay
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose Gopay as a payment method 
	   And Click buy button
	   And Input Gopay PIN
	   Then There’s a notification in Gopay Platform
	   And Payment successful 

	Scenario : Upgrade account to Premium with DANA Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose DANA as a payment method 
	   And Click buy button
	   And Input DANA’s account Number
	   And Input DANA PIN
	   Then There’s a notification in DANA Platform
	   And Payment Successful

	Scenario : Upgrade account to Premium with ShopeePay Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose ShopeePay as a payment method 
	   And Click buy button
	   And Input ShopeePay’s account Number
	   And Input ShopeePay PIN
	   Then There’s a notification in ShopeePay Platform
	   And Payment Successful

	Scenario : Upgrade account to Premium with Debit/Credit Card Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose Debit/Credit Card as a payment method 
	   And Proceed the Debit/Credit Card Data
	   And Submit the Data
	   Then User payment will direct to user’s card platform
	   And Payment Successful 

	Scenario : Upgrade account to Premium with Invalid Debit/Credit Card Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose Debit/Credit Card as a payment method 
	   And Proceed the Debit/Credit Card Data
	   And Submit the Data
	   Then There's an alert 
	   And Payment failed 

	Scenario : Upgrade account to Premium with Gopay Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose Gopay as a payment method 
	   And Click buy button
	   And Input Invalid Gopay PIN
	   Then There's an alert 
	   And Payment Failed
	Scenario : Upgrade account to Premium with DANA Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose DANA as a payment method 
	   And Click buy button
	   And Input Invalid DANA Account number
	   Then There's an alert 
	   And Payment Failed

	Scenario : Upgrade account to Premium with ShopeePay Payment method
	   When Click upgrade menu on navigation bar
	   And Click Try it free button
	   And Choose ShopeePayas a payment method 
	   And Click buy button
	   And Input Invalid ShopeePay PIN
	   Then There's an alert 
	   And Payment Failed

	Scenario : Upgrade account to Premium with Family Package
	   Given Account has been integrated with Gopay
	   When Click upgrade menu on navigation bar
	   And Click family or student plan
	   And Click Try it free button in Family Package
	   And Choose Gopay as a payment method 
	   And Click buy button
	   And Input Gopay PIN
	   Then There’s a notification in Gopay Platform
	   And Payment successful
	   And The host can invite 4 other family member to join the account

	Scenario : Upgrade account to Premium with Student Package
	   Given Account has been integrated with Gopay
	   When Click upgrade menu on navigation bar
	   And Click family or student plan
	   And Click Try it free button in Student plan
	   And Click continue to Sheer ID 
	   And Fill in All Student Data
	   And Waiting for Data validation
	   And Choose Gopay as a payment method
	   Then There’s a notification in Gopay Platform
	   And Payment successful
	   And Student data will be expired in the next year

	Scenario : Upgrade account to Premium Student Package with Invalid Student Data
	   Given Account has been integrated with Gopay
	   When Click upgrade menu on navigation bar
	   And Click family or student plan
	   And Click Try it free button in Student plan
	   And Click continue to Sheer ID 
	   And Fill in Invalid student data
	   And Waiting for Data validation
	   Then The data validation is failed
