class Mentor_API < Grape::API
  resource :mentor do
    get do
      Mentor.all
    end

    get ':id' do
      Mentor.find(params[:id])
    end

    post do
      Mentor.create({
        location_id: params[:location_id],
        fb_user_id: params[:fb_user_id],
        fb_token: params[:fb_token],
        fb_token_secret: params[:fb_token_secret],
        grade: params[:grade],
        rank: params[:rank],
        is_applicant: params[:is_applicant],
        is_admin: params[:is_admin],
      })
    end

    put ':id' do
      Mentor.find(params[:id]).update({
        location_id: params[:location_id],
        fb_user_id: params[:fb_user_id],
        fb_token: params[:fb_token],
        fb_token_secret: params[:fb_token_secret],
        grade: params[:grade],
        rank: params[:rank],
        is_applicant: params[:is_applicant],
        is_admin: params[:is_admin],
      })
    end

    delete ':id' do
      Mentor.find(params[:id]).destroy
    end
  end
end

