class PagesController < ApplicationController
  include PagesHelper

  def show
    if params[:id] == "start"
      if Page.where(adventure_id: params[:adventure_id]).find_by(name:params[:id]) == nil
        flash[:error] = "This adventure does't have a start page! Add start to view it."
        redirect_to root_path
      else
        @page = Page.where(adventure_id: params[:adventure_id]).find_by(name:params[:id])
      end
    else
      @page = Page.where(adventure_id: params[:adventure_id]).find_by(id:params[:id])
    end
  end
end
