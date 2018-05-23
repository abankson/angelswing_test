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

  def edit
    @project_item = Project.find(params[:id])
  end

  def update
    @project_item = Project.find(params[:id])

    respond_to do |format|
      if @project_item.update(params.require(:project).permit(:title, :description, :thumbnail))
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @project_item = Project.find(params[:id])

    #destroying the object
    @project_item.destroy

    #The redirect after destroying
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was removed.' }
    end
  end

end
