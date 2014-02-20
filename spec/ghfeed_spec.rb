require 'rubygems'
require 'rspec'
require_relative '../lib/github.rb'
require 'vcr'
require_relative 'support/vcr_setup.rb'

describe GHFeed::RepoInfo do
  describe '.get_repo_data'
end

describe GHFeed::UserInfo do
  describe '.get_user_data'
end
