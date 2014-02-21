require 'rubygems'
require 'unirest'
require 'pry'

module GHFeed
  class RepoInfo
    def self.get_repo_info(username, repo)
      response = Unirest.get "https://api.github.com/repos/#{username}/#{repo}/commits", auth:{:user=>ENV['USERNAME'], :password=>ENV['PASSWORD']}
      return response.body
    end
  end
  class UserInfo
    def self.gravatar_url(username)
      response = Unirest.get "https://api.github.com/users/#{username}", auth:{:user=>ENV['USERNAME'], :password=>ENV['PASSWORD']}
      x = response.body["gravatar_id"]
      "http://secure.gravatar.com/" + x
    end
  end
end

