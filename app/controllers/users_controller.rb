class UsersController < ApplicationController
  def show
    # populate @user_bookmarks with the user's bookmarks
    @user_bookmarks = current_user.bookmarks.group_by { |s| s.topic }

    # populate @liked_bookmarks with liked bookmarks
    @liked_bookmarks = current_user.liked_bookmarks
  end
end
