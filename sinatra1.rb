require 'sinatra'
require 'sinatra/reloader'
enable :sessions

get "/getdoc"do
"<!DOCTYPE html>
  <html>
    <head>
      <style>
      h1 {color: red;}        }
      </style>
    </head>
  <body>
  <h1> Sinatra phrase </h1>
  </body>
  </html>"
end



post "/logon" do
    
  if params[:username] == "bob" && params[:password] == "pass"
    "Success"
  else
    "Failure"
  end
end


post "/hello" do
    session[:stored_name] = params[:name]
    "Saved the name"
end 

get "/greet" do
    "Hello and welcome #{session[:stored_name]}" 
end

get '/howmany' do
   
    erb :howmany
end

post '/howmany' do
   
    'Thank you for your order!'
end

get '/candles' do
   
    erb :candles
end

post '/candles' do
    @num=params[:num]
    erb :candles
      
end