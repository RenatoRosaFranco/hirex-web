# frozen_string_literal: true

class FeedbacksController < ApplicationController
  def create
    @feedback = current_user.feedbacks.build(feedback_params)

    if @feedback.save
      flash[:notice] = 'Feedback sent with success.'
      redirect_to root_path
    else
      flash[:notice] = 'Failed to sent feedback, try again.'
      redirect_to root_path
    end
  end

  private

  def feedback_params
    params.require(:feedback)
          .permit(:message, :score)
  end
end
