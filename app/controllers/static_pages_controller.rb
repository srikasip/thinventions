class StaticPagesController < ApplicationController
  skip_before_filter :authorize
  
  def learn
  end

  def make
  end

  def about
  end
end
