require "sinatra"
require "http"

get "/" do
  "Hello World!"
end

get "/get" do
  HTTP.get(url).to_s
end

get "/post" do
  HTTP.post(url).to_s
end

get "/put" do
  HTTP.put(url).to_s
end

get "/patch" do
  HTTP.patch(url).to_s
end

get "/delete" do
  HTTP.delete(url).to_s
end

get "/head" do
  HTTP.head(url).to_s
end

def url
  params[:url]
end
