class HomesController < ApplicationController
  def top
    @lists = List.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end
  def about
  end
end
