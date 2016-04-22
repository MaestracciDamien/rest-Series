class SerieController < ApplicationController
  def index
    @series = Serie.all
  end
end
