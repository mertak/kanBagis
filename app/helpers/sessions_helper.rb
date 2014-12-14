module SessionsHelper

  def log_in(donor)
    session[:donor_id] = donor.id
  end

  def current_donor
    @current_donor ||= Donor.find_by(id: session[donor_id])
  end

  def logged_in?
    !@current_donor.nil?
  end

  def log_out
    session.delete(:donor_id)
    @current_donor = nil
  end

end
