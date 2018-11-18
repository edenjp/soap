def action(table)
  @parameters       = table.rows_hash  
  
  puts "\n\nPRINTING GIVEN BODY\n\n"
  puts cep_xml_payload

  endpoint          = $api['url']

  @action = HTTParty.post(
    endpoint,:headers => {"Content-Type" => 'text/xml', "SOAPAction" => 'urn:CEPServiceAction'}, 
    :body => cep_xml_payload
    )

  puts @action.code
  puts "\n\nPRINTING ENDPOINT\n\n"
  puts endpoint
end

def cep_xml_payload
  '<x:Envelope xmlns:x="http://schemas.xmlsoap.org/soap/envelope/" xmlns:www="urn:http://www.byjg.com.br">
      <x:Header/>
      <x:Body>
          <www:obterLogradouroAuth>
            <www:cep>'+@parameters['cep']+'</www:cep>
            <www:usuario>'+@parameters['user']+'</www:usuario>
            <www:senha>'+@parameters['password']+'</www:senha>
          </www:obterLogradouroAuth>
      </x:Body>
  </x:Envelope>'  
end
