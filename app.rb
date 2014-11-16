require "rubygems"
require "sinatra"
require "mongoid"
#require "haml"
require './post'


configure do
Mongoid.load!("./mongoid.yml")
end

class MySinatra < Sinatra::Base

get "/" do
  erb :index

end 

get "/posts" do
  
  @posts = Post.all.entries
  erb :posts
end













end
