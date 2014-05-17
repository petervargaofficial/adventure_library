class AdventuresController < ApplicationController

  def index
    @adventures_local = Adventure.where(library_id:nil)
    @adventures_global = Adventure.where.not(library_id:nil)
  end

  def new
  end

  def adventures
    @adventures = Adventure.all
    respond_to do |format|
      format.html
      format.xml { render xml: @adventures.to_xml }
      format.json { render json: {adventures: @adventures.as_json(include: {pages:{only:[:name, :text]}}, except:[:id, :library_id])}, status: :ok }
    end
  end

  def libraries
    @libraries = Library.all

    respond_to do |format|
      format.html
      format.xml { render xml: @libraries.to_xml }
      format.json { render json: {libraries: @libraries.as_json(only: [:url])}, status: :ok }
    end
  end

  def scrape_request
    url = params[:url]
    if Library.find_by(url:url) == nil
      AdventuresWorker.perform_async(url)
    else
      flash[:error] = "This Library already exists in the database - input another one, muchas gracias!"
    end
    redirect_to root_path
  end



end
