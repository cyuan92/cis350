class TherapistsController < ApplicationController
  def new
    @therapist = Therapist.new
  end
  
  def create
    @therapist = Therapist.new(params[:therapist])
    if @therapist.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
