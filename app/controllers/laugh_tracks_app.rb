class LaughTracksApp < Sinatra::Base

  get '/comedians' do
      @comedians = Comedian.all.includes(:specials)
      @average_age = @comedians.avg_age
    erb :index
  end
end
