class User < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :improvement_plans,
             :dependent => :destroy

  # Indirect associations

  has_many   :projects,
             :through => :comments,
             :source => :improvement_plan

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
