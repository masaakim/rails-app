class Principal_API < Grape::API
  resource :principal do
    get do
      Principal.all
    end

    get ':id' do
      Principal.find(params[:id])
    end

    post do
      Principal.create({
        name: params[:name]
      });
    end

    put ':id' do
      Principal.find(params[:id]).update({
        name: params[:name]
      })
    end

    delete ':id' do
      Principal.find(params[:id]).destroy
    end
  end
end
