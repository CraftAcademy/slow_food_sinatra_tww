class SlowFoodApp

  get '/' do
    erb :welcome
  end
  # 
  # get '/menu' do
  #   erb :menu
  # end

  post '/menu' do
    @menu = Product.all
    erb :menu
  end
end
