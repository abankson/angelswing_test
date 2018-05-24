class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @content_items = Content.all
  end

  def create
    @content_item = Content.new(content_params)

    respond_to do |format|
      if @content_item.save
        format.html { redirect_to project_path(@content_item.project_id), notice: 'Your project content has been created.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @content_item = Content.new
    @project_id = params[:id]
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @content_item.update(content_params)
        format.html { redirect_to project_path(@content_item.project_id), notice: 'Content was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    #destroying the object
    @content_item.destroy

    #The redirect after destroying
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was removed.' }
    end
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
