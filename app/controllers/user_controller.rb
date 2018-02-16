class SlowFoodApp
  get '/auth/create' do
    erb :signup
  end


  post '/auth/create' do
    user = User.create(name: params[:name], password: params[:password])
    if user.persisted?
      env['warden'].authenticate!
      message = "Successfully created account for #{user.name}"
      redirect '/', notice: message
    else
      message = 'Unsuccessful'
      redirect '/auth/create', notice: message
    end
  end
end
