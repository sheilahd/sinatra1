require "sinatra"
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



