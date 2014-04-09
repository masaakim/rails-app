class Assignment_API < Grape::API
  resource :assignment do
    get do
      Assignment.all
    end

    get ':id' do
      Assignment.find(params[:id])
    end

    post do
      Assignment.create({
        event_id: params[:event_id],
        mentor_id: params[:mentor_id],
      })
    end

    put ':id' do
      Assignment.find(params[:id]).update({
        event_id: params[:event_id],
        mentor_id: params[:mentor_id],
      })
    end

    delete ':id' do
      Assignment.find(params[:id]).destroy
    end
  end
end

