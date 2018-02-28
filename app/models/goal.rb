class Goal < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
