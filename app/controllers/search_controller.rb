require 'pp'
class SearchController < ApplicationController
  before_action :set_query

  def tweet
    @status_query = query_param
    @result_type = result_type_param
    json = cache_fetch :tweet, @status_query, @result_type do
      client.search(@status_query, result_type: @result_type, count: 100).to_json
    end

    @results = JSON.parse json
    pp @results.first
  end

  def people
    @people_query = query_param
    @page = page_param
    json = cache_fetch :people, @people_query, @page do
      client.user_search(@people_query, page: @page).to_json
    end

    @results = JSON.parse json
  end

  private

  def query_param
    params.require :query
  end

  def result_type_param
    params.require :result_type
  end

  def page_param
    params.permit(:page).fetch(:page, 1).to_i
  end

  def set_query
    @query = query_param
  end
end
