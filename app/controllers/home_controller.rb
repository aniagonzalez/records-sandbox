class HomeController < ApplicationController
  def index
    # @name = "Ania"
    @name = params[:name] || "Guest"
  end

  def rosa
    @best_dog = "Beba"
  end
end
