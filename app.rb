require "sinatra"
require "http"

get "/" do
  "Hello World!"
end

get "/get" do
  HTTP.follow.get(url).to_s
end

get "/post" do
  HTTP.follow.post(url).to_s
end

get "/put" do
  HTTP.follow.put(url).to_s
end

get "/patch" do
  HTTP.follow.patch(url).to_s
end

get "/delete" do
  HTTP.follow.delete(url).to_s
end

get "/head" do
  HTTP.follow.head(url).to_s
end

def url
  params[:url]
end
