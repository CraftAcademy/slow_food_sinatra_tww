class SlowFoodApp

  get '/' do
    erb :welcome
  end

  # post '/signup' do
  #   @name = params[:name]
  #   @password = params[:password_digest]
  #   user = User.new(name: params[:name], password: params[:password])
  #   user.save
  #   erb :signup
  # end

  get '/signup' do
    erb :signup
  end
end
