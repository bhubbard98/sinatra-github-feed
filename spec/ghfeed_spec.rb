require 'rubygems'
require 'rspec'
require 'vcr'
require_relative '../lib/github.rb'
require_relative 'support/vcr_setup.rb'

describe GHFeed::RepoInfo do
  describe '.get_repo_info' do
    it "gets back an array of commits from GitHub" do
      VCR.use_cassette('bhubbard98_pizza_repo') do
        expect(GHFeed::RepoInfo.get_repo_info('bhubbard98', 'pizza').class).to eq(Array)
      end
    end
  end
end
# binding.pry
describe GHFeed::UserInfo do
  describe '.gravatar_url' do
    it "returns the url to the user's corresponding gravatar image" do
      VCR.use_cassette('gravatar') do
        expect(GHFeed::UserInfo.gravatar_url('bhubbard98')).to eq("http://secure.gravatar.com/68257ca48c6ff275bd7a6c737d67cf95")
      end
    end
  end
end
