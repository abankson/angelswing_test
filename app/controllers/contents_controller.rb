class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @content_items = Content.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content_item = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:title, :content_type, :project_id)
    end
end
