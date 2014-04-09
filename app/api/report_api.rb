class Report_API < Grape::API
  resource :report do
    get do
      Report.all
    end

    get ':id' do
      Report.find(params[:id])
    end

    post do
      Report.create({
        assignment_id: params[:assignment_id],
        q_1: params[:q_1],
        q_2: params[:q_2],
        q_3: params[:q_3],
        q_4: params[:q_4],
        q_secret: params[:q_secret],
      })
    end

    put ':id' do
      Report.find(params[:id]).update({
        assignment_id: params[:assignment_id],
        q_1: params[:q_1],
        q_2: params[:q_2],
        q_3: params[:q_3],
        q_4: params[:q_4],
        q_secret: params[:q_secret],
      })
    end

    delete ':id' do
      Report.find(params[:id]).destroy
    end
  end
end


