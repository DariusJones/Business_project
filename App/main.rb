require 'sinatra'
require 'mandrill'

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

post '/contact' do 
	puts params.inspect
	email = params["email"]
	user_message = params["message"]
	puts "sending email!!!"
	api_key = ENV['MANDRILL_APIKEY']
	m = Mandrill::API.new "#{api_key}"
	message = {
		:subject=> "New Message",
		:from_name=> email,
		:text=>"New Message: " + user_message,
		:to=>[
 				{
 					:email=> "adwaxman@gmail.com", 
 					:name=> "Adam Waxman"
 				}
 			],
 		:html=>"<html><h1>New Message</h1><h3>#{user_message}</h3></html>",
 		:from_email=>"adwaxman@gmail.com"
	}
	sending = m.messages.send message
	puts sending
	redirect to('/thanks')	
end

get '/thanks' do
	erb :thanks
end

get '/form' do 
	@title = "Form"
	erb :form
end
post '/signin' do 
	@title = "You are signed in"
	erb :signin
end