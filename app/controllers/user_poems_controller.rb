class UserPoemsController < ApplicationController
  def index 
    render json: UserPoem.all 
  end
end
