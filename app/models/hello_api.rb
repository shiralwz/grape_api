module HelloApi
  require 'grape'

  class OneAPI < Grape::API
    resource :apis do
      format :json

      get 'hello' do
        {message: "hello #{params[:name]} via GET"}
      end

      post 'hello' do
        {message: "hello #{params[:name]} via POST"}
      end
    end

  end

end
