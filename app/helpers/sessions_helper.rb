module SessionsHelper

  def log_in(donor)
    session[:donor_id] = donor.id
  end

  def current_donor
    @current_donor ||= Donor.where(id: session[:donor_id]).first
  end

  def logged_in?
    !current_donor.nil?
  end

  def log_out
    session.delete(:donor_id)
    @current_donor = nil
  end

end
