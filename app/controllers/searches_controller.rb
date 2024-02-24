# frozen_string_literal: true

class SearchesController < ApplicationController
  def index
    query = params[:query]
    current_user.search_histories.create(query: query) if current_user
    @companies = search_companies(query)
  end

  private

  def search_companies(query)
    User.where('name ILIKE ?', "%#{query}%")
  end
end