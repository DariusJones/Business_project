require 'sinatra'
get '/' do 
	@title = "Home"
	erb :home
end
get '/about' do 
	@title = "About"
	erb :about
end
get '/services' do 
	@title = "Services"
	erb :services
end
get '/products' do 
	@title = "Our Products"
	erb :products
end
get '/form' do 
	@title = "Form"
	erb :form
end
post '/signin' do 
	@title = "You are signed in"
	erb :signin
end