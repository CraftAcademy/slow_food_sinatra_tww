class SlowFoodApp

  get '/' do
    erb :welcome
  end



  get '/menu' do
    @menu = Product.all
    @menu_name = Menu.name
    erb :menu
  end
end
