require 'sinatra'
get '/' do 
	@title = "Home"
	erb :home
end
get '/menu' do 
	@title = "Menu"
	erb :menu
end
get '/story' do 
	@title = "Our Story"
	erb :story
end
get '/contact' do 
	@title = "Contact Us"
	erb :contact
end
get '/form' do 
	@title = "Form"
	erb :form
end
post '/signin' do 
	@title = "You are signed in"
	erb :signin
end