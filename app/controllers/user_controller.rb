class SlowFoodApp
  get '/auth/create' do
      erb :signup
  end


  post '/auth/create' do
    user = User.new(name: params[:name], password: params[:password])
    if user.valid?
      # binding.pry
      user.save
      env['warden'].authenticate!
      @message = "Successfully created account for #{current_user.username}"
      redirect '/'
    else
      @message = "Unsuccessful"
    end
  end
end
