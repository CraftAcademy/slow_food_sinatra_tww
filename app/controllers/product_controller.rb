class SlowFoodApp

  get '/' do
    erb :welcome
  end

  post '/' do
    if params[:name].present? && params[:password] != params[:password_confirmation]
      @message = "Passwords must match"
    elsif params[:name].blank? || params[:password].blank? || params[:password_confirmation].blank?
      @message = "Please enter all fields"
    elsif params[:name].present? && params[:password].present? && params[:password_confirmation].present?
      User.create(name: params[:name], password: params[:password])
      @message = "signup successful"
    end
    erb :welcome
  end

  get '/signup' do
    erb :signup
  end

end
