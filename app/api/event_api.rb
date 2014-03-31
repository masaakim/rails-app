class Event_API < Grape::API
  resource :event do
    get do
      Event.all
    end

    get ':id' do
      Event.find(params[:id])
    end

    post do
      Event.create({
        name: params[:name],
        description: params[:description],
        url: params[:url],
        start_time: params[:start_time],
        end_time: params[:end_time],
        place: params[:place],
        place_url: params[:place_url],
        staff_count: params[:staff_count],
      })
    end

    put ':id' do
      Event.find(params[:id]).update({
        name: params[:name],
        description: params[:description],
        url: params[:url],
        start_time: params[:start_time],
        end_time: params[:end_time],
        place: params[:place],
        place_url: params[:place_url],
        staff_count: params[:staff_count],
      })
    end

    delete ':id' do
      Event.find(params[:id]).destroy
    end
  end
end
