require 'warden'
require_relative 'helpers/warden'

class SlowFoodApp
  enable :sessions
    # register Sinatra::Flash
    # register Sinatra::Warden
    set :session_secret, 'supersecret'

    use Warden::Manager do |config|
      config.serialize_into_session { |user| user.id }
      config.serialize_from_session { |id| User.get(id) }
      config.scope_defaults :default,
                            strategies: [:password],
                            action: 'auth/unauthenticated'
      config.failure_app = self
    end

    Warden::Manager.before_failure do |env, opts|
      env['REQUEST_METHOD'] = 'POST'
    end

    get '/auth/create' do
        erb :signup
    end

    post '/auth/create' do
        
    end

end
