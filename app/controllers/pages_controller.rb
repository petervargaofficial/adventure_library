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

  def new
    @adventure = Adventure.find_by(id:params[:adventure_id])
    @page = Page.new
  end

  def create
    adventure = Adventure.find_by(id:params[:adventure_id])
    page = Page.create(page_params)
    page[:adventure_id] = params[:adventure_id]
    page.save
    redirect_to edit_adventure_path(adventure)
  end

  def update
    adventure = Adventure.find_by(id:params[:adventure_id])
    page = Page.find_by(id:params[:id])
    page.update(page_params)
    redirect_to edit_adventure_path(adventure)
  end

  def destroy
    adventure = Adventure.find_by(id:params[:adventure_id])
    Page.find_by(id:params[:id]).destroy
    redirect_to edit_adventure_path(adventure)
  end

  private
  def page_params
    params.require(:page).permit(:name,:text)
  end
end
