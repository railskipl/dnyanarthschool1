class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
     @title = "#{@page.title}"
end
end
