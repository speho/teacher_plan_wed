class ActionStep < ApplicationRecord
  # Direct associations

  belongs_to :goal

  # Indirect associations

  # Validations

  validates :state, :presence => true

  validates :state, :numericality => true

  validates :state, :length => { :minimum => 0, :maximum => 5 }

end
