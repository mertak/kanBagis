module SessionsHelper

def log_in(donor)
    session[:donor_id] = donor.id
  end
end
