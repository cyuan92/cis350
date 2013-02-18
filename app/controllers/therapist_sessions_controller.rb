class TherapistSessionsController < ApplicationController
  def new
  end

   def create
    therapist = Therapist.authenticate(params[:email], params[:password])
    if therapist
      session[:therapist_id] = therapist.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
   end
   
   def destroy
     session[:therapist_id] = nil
     redirect_to root_url, :notice => "Logged out!"
   end
end
