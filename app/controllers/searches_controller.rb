# frozen_string_literal: true

class SearchesController < ApplicationController
  def index
    current_user.search_histories.create(query: params[:q][:term]) if current_user
    @search_histories = current_user.search_histories.order(created_at: :desc)
    render 'jobs/index'

    # @companies = search_companies(query)
  end

  private

  def search_companies(query)
    User.where('name ILIKE ?', "%#{query}%")
  end
end