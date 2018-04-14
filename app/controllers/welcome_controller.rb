class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to issued_items_path
    end
  end
end
