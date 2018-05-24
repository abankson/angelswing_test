class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index],  
          guest_user: {except: [:destroy, :new, :create, :update, :edit]},
          user: {except: [:destroy]},
          site_admin: :all


  def index 
    @project_items = Project.all
  end
  
  def new
    @project_item = Project.new
  end

  def create
    @project_item = Project.new(project_params)

    respond_to do |format|
      if @project_item.save
        format.html { redirect_to @project_item, notice: 'Your project has been created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @project_contents = Project.find(params[:id]).contents
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project_item.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    #destroying the contents of the project
    @project_item.contents.each do |content|
      content.destroy
    end
    #destroying the project
    @project_item.destroy

    #The redirect after destroying
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was removed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project_item = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :thumbnail)
    end
end
