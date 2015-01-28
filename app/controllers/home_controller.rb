class HomeController < ApplicationController
  def index
    file = File.read(Rails.root.join("app/assets/config/profile.json"))
    @profile = JSON.parse(file)
  end
end
