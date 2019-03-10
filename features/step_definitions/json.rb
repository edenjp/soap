Given("that I want to recover a post") do
  puts "\nSTARTING OPERATION TO RECOVER POST WITH ID 2\n"
end

When("I call a get method with a existent id") do
  get_post
end

Then("the response status will be 200 with a corresponding body") do
  expect(@search_post.code).to eq 200
  @parse_response = JSON.parse(@search_post.body, object_class: OpenStruct)
  expect(@parse_response.title).to eq "qui est esse"
  puts "\nPRINTING POST TITLE\n"
  puts @parse_response.title
end
