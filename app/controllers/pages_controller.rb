class PagesController < ApplicationController
	 layout false

  def index
    @pages = Page.all
  end

  def show
    @pages = Page.find(params[:id])
  end

  def new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
    if @page.save
      redirect_to(:action => 'show')
    else
      render('edit')
    end
  end

  def delete
    page =Page.find(params[:id])
    page.destroy
  end

  private 

  def page_params
    params.require(:page).permit(:name,:permalink, :position, :visible)
  end
end

end
