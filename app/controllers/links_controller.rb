class LinksController < ApplicationController
  include LinksHelper

  def show
  end

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def up_vote
    @link = Link.find(params[:id])
    @link.votes +=1
    @link.save
    redirect_to root_path
  end

  def down_vote
    @link = Link.find(params[:id])
    @link.votes -=1
    @link.save
    redirect_to root_path
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
