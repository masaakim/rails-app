class Category_API < Grape::API
  resource :category do
    get do
      Category.all
    end

    get ':id' do
      Category.find(params[:id])
    end

    post do
      Category.create({
        name: params[:name]
      });
    end

    put ':id' do
      Category.find(params[:id]).update({
        name: params[:name]
      })
    end

    delete ':id' do
      Category.find(params[:id]).destroy
    end
  end
end
