class ProjectsController < ApplicationController

  def index 
    @project_items = Project.all
  end

  def new
    @project_item = Project.new
  end

  def create
    @project_item = Project.new(params.require(:project).permit(:title, :description, :thumbnail))

    respond_to do |format|
      if @project_item.save
        format.html { redirect_to @project_item, notice: 'Your project has been created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @project_item = Project.find(params[:id])
  end

end
