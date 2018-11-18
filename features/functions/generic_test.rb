def action(table)
  @parameters                       = table.rows_hash  
  @parameters['logradouro']         = Faker::Address.full_address
  @parameters['localidade']         = Faker::Address.city
  @parameters['UF']                 = Faker::Name.name
  
  xml_payload

  puts "\n\nPRINTING GIVEN BODY\n\n"
  puts @post_action_cep

  endpoint               = $api['url']

  @action = HTTParty.post(endpoint,:headers => {"Content-Type" => 'text/xml'}, :body => @post_action_cep)

  puts @action.code
  puts "\n\nPRINTING ENDPOINT\n\n"
  puts endpoint

  puts "\n\nPRINTING RESPONSE BODY\n\n"
  puts @action.body

end