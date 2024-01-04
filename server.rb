require 'sinatra'

get "/" do
  "hello world"
end

get "/get-hosts/:id" do
  content_type :json
  { :param => params['id'], :query => params['query'] }.to_json
end
