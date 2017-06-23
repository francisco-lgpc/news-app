class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @articles = Article.first(3) # Later we need to implemented criteria to set the to articles
  end
end
