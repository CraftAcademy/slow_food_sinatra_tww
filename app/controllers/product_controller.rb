class SlowFoodApp
  get '/menu' do
      @menu = Menu.first
      erb :menu
    end
end
