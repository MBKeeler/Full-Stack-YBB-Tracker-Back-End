# frozen_string_literal: true

class Assessment < ApplicationRecord
  belongs_to :player, inverse_of: :assessments
  belongs_to :user, inverse_of: :assessments
end
