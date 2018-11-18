def action(table)
  @parameters                       = table.rows_hash  
  
  puts "\n\nPRINTING GIVEN BODY\n\n"
  puts cep_xml_payload

  endpoint               = $api['url']

  @action = HTTParty.post(
    endpoint,:headers => {"Content-Type" => 'text/xml', "SOAPAction" => 'urn:CEPServiceAction'}, 
    :body => cep_xml_payload
    )

  puts @action.code
  puts "\n\nPRINTING ENDPOINT\n\n"
  puts endpoint



end