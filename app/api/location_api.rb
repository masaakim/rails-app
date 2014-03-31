class Location_API < Grape::API
  resource :location do
    get do
      Location.all
    end

    get ':id' do
      Location.find(params[:id])
    end

    post do
      Location.create({
        name: params[:name]
      });
    end

    put ':id' do
      Location.find(params[:id]).update({
        name: params[:name]
      })
    end

    delete ':id' do
      Location.find(params[:id]).destroy
    end
  end
end
