class SlowFoodApp

  get '/' do
    erb :welcome
  end



  get '/menu' do
    #@menu = Product.all
    @menu = Menu.first
    erb :menu
  end
end
