class SlowFoodApp

  get '/' do
    erb :welcome
  end

  post '/' do
    User.create(name: params[:name], password: params[:password])
    @message = "signup successful"
    erb :welcome
  end

  get '/signup' do
    erb :signup
  end

end
