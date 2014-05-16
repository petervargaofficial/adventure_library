class PagesController < ApplicationController
  include PagesHelper

  def show
    if params[:id] == "start"
      @page = Page.where(adventure_id: params[:adventure_id]).find_by(name:params[:id])
    else
      @page = Page.where(adventure_id: params[:adventure_id]).find_by(id:params[:id])
    end
  end
end
