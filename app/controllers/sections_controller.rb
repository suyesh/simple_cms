class SectionsController < ApplicationController
	 layout false

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
  end

  def create
    @section = Section.new(subject_params)
    if @section.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
    @section.update_attributes(section_params)
    if @section.save
      redirect_to(:action => 'show')
    else
      render('edit')
    end
  end

  def delete
    section = Section.find(params[:id])
    section.destroy
  end

  private 

  def section_params
    params.require(:section).permit(:name, :position, :visible,:content_type,:content)
  end
end

end
