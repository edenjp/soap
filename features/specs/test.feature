Feature: XML
	XML TEST 

  Scenario Outline: WSDL POST LIKE USING REST
    
 	  Given a WSDL rquest
	  When I send parameters with the post method and with XML text
      | cep     		| <cep>   		|
      | user  			| <user>		 	|
      | password		| <password>	|
	  Then the <status_code> needs to return 200

    Examples:
    |cep     |user     |password	   |status_code |
    |04966000|<user>   |<passrword>  |200   	    |