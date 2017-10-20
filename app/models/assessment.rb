# frozen_string_literal: true

class Assessment < ApplicationRecord
  belongs_to :player, inverse_of: :assessments
  belongs_to :user, inverse_of: :assessments

  validates :integer, :catch, presence: true
  validates :integer, :throw, presence: true
  validates :integer, :pitch, presence: true
  validates :integer, :bat, presence: true
  validates :integer, :athleticism, presence: true

end
