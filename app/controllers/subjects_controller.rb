class SubjectsController < ApplicationController

  layout false

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    @subject.update_attributes(subject_params)
    if @subject.save
      redirect_to(:action => 'show')
    else
      render('edit')
    end
  end

  def delete
    subject = Subject.find(params[:id])
    subject.destroy
  end

  private 

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
