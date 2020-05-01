class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def stories
    @story_number = (1..3).to_a.shuffle.first
  end
end
