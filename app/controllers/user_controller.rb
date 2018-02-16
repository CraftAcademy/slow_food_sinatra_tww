require "warden"


class SlowFoodApp
    use Rack::Session::Cookie

use Warden::Manager do |manager|
  manager.default_strategies :password
  manager.failure_app = YourApp
  manager.serialize_into_session {|user| user.id}
  manager.serialize_from_session {|id| Datastore.for(:user).find_by_id(id)}
end

Warden::Manager.before_failure do |env,opts|
  env['REQUEST_METHOD'] = 'POST'
end

Warden::Strategies.add(:password) do
  def valid?
    params["email"] || params["password"]
  end

  def authenticate!
    user = Datastore.for(:user).find_by_email(params["email"])
    if user && user.authenticate(params["password"])
      success!(user)
    else
      fail!("Could not log in")
    end
  end
end

def warden_handler
    env['warden']
end

def current_user
    warden_handler.user
end

def check_authentication
    redirect '/login' unless warden_handler.authenticated?
end

get "/protected_page" do
    check_authentication
    erb 'admin_only_page'.to_sym
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
