class CitationsController < ApplicationController
  def index
    @citations = Citation.all
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)
    if @citation.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def citation_params
    params.require(:citation).permit(:text)
  end
end
