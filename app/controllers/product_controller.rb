class SlowFoodApp

  get '/' do
    binding.pry
    erb :welcome
  end
end
