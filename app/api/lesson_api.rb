class Lesson_API < Grape::API
  resource :lesson do
    get do
      Lesson.all
    end

    get ':id' do
      Lesson.find(params[:id])
    end

    post do
      Lesson.create({
        category_id: params[:category_id],
        name: params[:name],
        description: params[:description],
        pdf_file: params[:pdf_file],
      })
    end

    put ':id' do
      Lesson.find(params[:id]).update({
        category_id: params[:category_id],
        name: params[:name],
        description: params[:description],
        pdf_file_path: params[:pdf_file_path],
      })
    end

    delete ':id' do
      Lesson.find(params[:id]).destroy
    end
  end
end
