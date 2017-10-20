# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :user

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :program, presence: true
  # validates :age, presence: true
  # validates :grade, presence: true
  # validates :catch, presence: true
  # validates :throw, presence: true
  # validates :pitch, presence: true
  # validates :bat, presence: true
  # validates :athleticism, presence: true
  #  we do not need to validates a note. This is optional
  # we want to validate assessments when a player is made
end
