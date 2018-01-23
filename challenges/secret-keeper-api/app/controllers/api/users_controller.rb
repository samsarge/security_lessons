module Api
  class UsersController < ApiController
    def index
      respond_with(User.all.includes(:secret).to_json(include: :secret))
    end
  end
end
