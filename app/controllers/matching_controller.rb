class MatchingController < ApplicationController
  def index
    @users = current_user.matchers.order("created_at DESC")
  end
end
