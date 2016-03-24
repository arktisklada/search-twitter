class SearchController < ApplicationController
  def tweet
    @query = params[:query]
    json = cache_fetch(:tweet, @query) do
      client.search(@query, result_type: "recent", count: 100).to_json
    end

    @results = JSON.parse json
  end

  def people
    @query = params[:query]
    @page = params.fetch(:page, 1).to_i
    json = cache_fetch(:people, @query, @page) do
      client.user_search(@query, page: @page).to_json
    end

    @results = JSON.parse json
  end
end