class StaticPagesController < ApplicationController
  def home
  end
  
  def index
    if user_signed_in?
      redirect_to users_path
    else
      redorect_to new_user_session_path
    end
  end
end
