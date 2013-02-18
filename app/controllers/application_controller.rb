class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_patient
  helper_method :current_therapist

  private

  def current_patient
    @current_patient ||= Patient.find(session[:patient_id]) if session[:patient_id]
  end

  def current_therapist
    @current_therapist ||= Therapist.find(session[:therapist_id]) if session[:therapist_id]
  end
end
