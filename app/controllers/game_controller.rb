class GameController < ApplicationController
  def game
  end
  def ai
    render :json => User.online_users
  end
end
