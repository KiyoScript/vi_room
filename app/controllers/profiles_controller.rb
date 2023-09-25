class ProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'profile/profile_layout'

  def show;
  end

  
end
