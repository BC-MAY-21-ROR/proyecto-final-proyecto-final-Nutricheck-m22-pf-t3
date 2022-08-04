class Patients::PatientsSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super

    permit(:sign_up, keys: %i[username email name last_name birth_date phone height])
  end
end
