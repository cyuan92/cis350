class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
