require 'sinatra'

get "/" do
  "hello world"
end

get "/get-hosts/:id" do
  content_type :json
  { :param => params['id'], :query => params['query'] }.to_json
end

get "/hello/:name" do
  puts "#{params['name']}"
end


get "/erb" do
  erb :index
end
