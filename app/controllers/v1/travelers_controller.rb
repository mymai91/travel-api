class V1::TravelersController < V1::BaseController
  def index
    travelers = Traveler.all

    render json: travelers, root: false
  end
end
