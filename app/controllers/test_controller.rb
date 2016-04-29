require 'httparty'
class TestController < ApplicationController

  def show
    test  = HTTParty.get "https://www.reddit.com/r/factorio.json",
            :headers => {
                        }
    @content = test["data"]["children"]
    @test = "ptite Bite"
  end
end
