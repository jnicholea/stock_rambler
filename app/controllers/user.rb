require "sinatra/flash"
enable :sessions

  ##session/get##
 get '/users/login' do
    erb :"/users/login"
  end
 

  get '/users/new' do
    @user = User.new
    erb :'/users/new'
  end

##create##
post "/users" do
  @user = User.new(business_name: params[:business_name], username: params[:username], email: params[:email], password_hash: params[:password])
  @user.password_hash = params[:password]
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @error = "Please check username, email, and password entries"
    erb :'/users/new'
  end
end

##show##
get '/users/:id' do
  @user = User.find(params[:id])
  # if current_user.id == @user.id
  session[:id] = @user.id
  erb :'/users/show'
end


##session/post##
  post "/users/login" do
    @user = User.find_by(username: params[:username])
    if @user && @user.password_hash == params[:password]
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @error = "Username/Password is incorrect"
      redirect "/users/login"
    end
  end

##edit##
get '/users/edit/:id' do
  @user = User.find(params[:id])
  redirect "/user/#{@user.id}"
end

##update##
put '/users/edit/:id' do
  @user = User.find(params[:id])
  @user.update(params)
  redirect "/user/#{@user.id}"
end


##delete##
delete '/logout' do
  session[:id] = nil
  redirect "/"
end
