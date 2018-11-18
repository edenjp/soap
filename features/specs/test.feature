Feature: XML
	XML TEST 

  Scenario Outline: WSDL POST LIKE USING REST
    
 	  Given a WSDL rquest
	  When I send parameters with the post method and with XML text
      | logradouro     		| <logradouro>   		|
      | localidade  			| <localidade>		 	|
      | UF								| <UF>							|
	  Then the <status_code> needs to return 200

    Examples:
    |logradouro   |localidade     |UF		   |status_code |
    |	    	  		|		          	|			   |200   	    |