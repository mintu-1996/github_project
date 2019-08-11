class RepositoriesController < ApplicationController
  before_action :request_validation
  GITHUB_API = 'https://api.github.com/'
  USER_REPO_ENDPOINT = 'user/repos?type=owner'
  PER_PAGE = 10
  DEFAULT_PAGE = 1
  def index
    repos = get_repos(USER_REPO_ENDPOINT,params[:access_token])
    render status: 200, json: repos
  end

  def paginated
    per_page = (params[:per_page] || PER_PAGE)
    page = (params[:page] || DEFAULT_PAGE)
    url = USER_REPO_ENDPOINT + "&page=#{page}&per_page=#{per_page}"
    repos = get_repos(url,params[:access_token])
    render status: 200, json: repos
  end

  private 

  def get_repos(url,access_token)
    headers = {"Authorization": "token #{access_token}"}
    conn = Faraday.new(url: GITHUB_API, headers: headers)
    (conn.get url).body
  end
end


