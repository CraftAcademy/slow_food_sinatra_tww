require "warden"

class SlowFoodApp

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
  use Warden::Manager do |config|
      # serialize user to session ->
      config.serialize_into_session{|user| user.id}
      # serialize user from session <-
      config.serialize_from_session{|id| User.get(id) }
      # configuring strategies
      config.scope_defaults :default,
                    strategies: [:password],
                    action: 'auth/unauthenticated'
      config.failure_app = self
    
  get '/signup' do
    erb :signup
  end

end
