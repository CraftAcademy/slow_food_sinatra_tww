class SlowFoodApp

  get '/' do
    erb :welcome
  end

  post '/menu' do
    @menu = Product.all
    erb :menu
  end
end
