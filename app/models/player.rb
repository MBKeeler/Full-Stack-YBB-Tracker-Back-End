# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :assessments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :program, presence: true
  validates :age, presence: true
  validates :grade, presence: true
  #  we do not need to validates a note. This is optional
  # we want to validate assessments when a player is made
  validates_associated :assessments
end
