class SearchController < ApplicationController
  def tweet
    @query = params[:query]
    @results = client.search @query, result_type: "popular"
  end

  def people
    @query = params[:query]
    @page = params.fetch(:page, 1).to_i
    @results = client.user_search @query, page: @page
  end
end