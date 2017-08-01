class WelcomeController < ApplicationController

  def landing
    @location = request.location
  end
end
