class ActionStep < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :point_man,
             :class_name => "User",
             :foreign_key => "user_id"

  belongs_to :goal

  # Indirect associations

  # Validations

  validates :state, :presence => true

  validates :state, :numericality => true

  validates :state, :length => { :minimum => 0, :maximum => 5 }

end
