class AdventuresController < ApplicationController

  def index
    @adventures = Adventure.all
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

end
