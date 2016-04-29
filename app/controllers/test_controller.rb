require 'httparty'
class TestController < ApplicationController

  def show
    test  = HTTParty.get "https://www.reddit.com/r/factorio.json",
            :headers => {
                        }

    @youtube = Array.new
    test["data"]["children"].each{
      |x|
      case x["data"]["domain"]
      when "youtu.be"
        s = x["data"]["media_embed"]["content"]
        s=s.gsub! '&gt;', '>'
        s=s.gsub! '&lt;', '<'
        @youtube.push(s)
      end
    }
    @content = test["data"]["children"]

    @test = "ptite Bite"
  end
end
