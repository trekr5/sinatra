require "rubygems"
require "sinatra"
require "mongoid"
#require "haml"


configure do
Mongoid.load!("./mongoid.yml")
end

class MySinatra < Sinatra::Base

get "/" do
  erb :index

end 

get "/posts" do
    
     erb :posts
  end













end
