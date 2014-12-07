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

post "/encrypt" do
"You said hello"
@username = params[:username]
@password = params[:password]
  
 # erb :encrypt	

end	

get "/encrypt" do
  erb :encrypt

end	

get "/posts" do
  
  @posts = Post.all.entries
  erb :posts
end

end

__END__



