def get_post()
  @id          = "2"
  endpoint     = $api['get_post']
  endpoint     = endpoint.gsub("<id>", @id)
  
  @search_post = HTTParty.get(endpoint, :headers => {"Content-Type" => 'application/json'})
  puts "\n\nPRINTING ENDPOINT\n"
  puts endpoint
  puts "\n\nPRINTING SEARCH RESPONSE\n"
  puts @search_post.body
  puts @search_post.code
  
  case @search_post.code
  when 200
    puts "OK"
  when 404
    puts "NOT FOUND"
  when 400
    puts "BUSINESS PROBLEMS"
  when 500...600
    puts "OOPS! #{@search_post.code}"
  end
end