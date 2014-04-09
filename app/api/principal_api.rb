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
        message: params[:message]
      });
    end

    put ':id' do
      Principal.find(params[:id]).update({
        message: params[:message]
      })
    end

    delete ':id' do
      Principal.find(params[:id]).destroy
    end
  end
end
