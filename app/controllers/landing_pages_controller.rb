class LandingPagesController < ApplicationController
  before_action :authenticate_user!
  
  def home
  end

  def help
  end
end
