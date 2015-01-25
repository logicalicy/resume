class HomeController < ApplicationController
  def index
    file = File.read(Rails.root.join("public/profile.json"))
    @profile = JSON.parse(file)
  end
end
