module API
  class Base < Grape::API
    prefix 'api'
    version 'v1', using: :path
    format :json

    mount Category_API
    mount Location_API
    mount Principal_API
    mount Event_API
    mount Mentor_API
  end
end
