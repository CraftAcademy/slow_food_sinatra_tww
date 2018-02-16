class SlowFoodApp
  get '/' do
   erb :welcome
 end

 get '/menu' do
   @menu = Menu.first
   erb :menu
 end
end
