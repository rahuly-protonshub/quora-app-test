class UsersController < ApplicationController
    def follow_user
      current_user.follows.create(following_id: params[:user_id])
      byebug
      redirect_to question_path(params[:question_id])
    end

    def unfollow_user
        follow = current_user.follows.find_by(following_id: params[:user_id])
        if follow.present?
          follow.destroy
        end
        redirect_to question_path(params[:question_id])
    end

    def follow_theme
        current_user.follow_themes.create(theme_id: params[:theme_id])
        redirect_to question_path(params[:question_id])
    end

    def unfollow_theme
        follow_theme = current_user.follow_themes.find_by(theme_id:params[:theme_id])
        if follow_theme.present?
            follow_theme.destroy
        end
        redirect_to question_path(params[:question_id])
    end
end