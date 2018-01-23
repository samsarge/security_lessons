module Api
  class SecretsController < ApiController
    def index
      respond_with(Secret.all)
    end

    def show
      respond_with(Secret.find(params[:id]))
    end
  end
end
