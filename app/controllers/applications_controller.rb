class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new

  end

  def create
    @application = Application.new(application_params)

    if @application.save
      redirect_to @application
    else
      render 'new'
    end
  end

  private

  def application_params
    params.require(:application).permit(:company, :position, :remote)
  end
end
