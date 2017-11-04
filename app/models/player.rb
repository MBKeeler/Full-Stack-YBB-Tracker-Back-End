# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, length: { maximum: 2 }
  validates :grade, presence: true, length: { maximum: 1 }
  validates :program, length: { maximum: 250 }
  validates :notes, length: { maximum: 250 }
  validates :catch, presence: true, length: { maximum: 1 }
  validates :throw, presence: true, length: { maximum: 1 }
  validates :pitch, presence: true, length: { maximum: 1 }
  validates :bat, presence: true, length: { maximum: 1 }
  validates :athleticism, presence: true, length: { maximum: 1 }
  #  we do not need to validates a note. This is optional
  # we want to validate assessments when a player is made
end
