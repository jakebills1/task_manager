# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :assignee
  enum status: { backlog: 0, in_progress: 1, qa: 2, released: 3 }
  validates :summary, presence: true
  def assignee_name
    assignee&.name || 'Unassigned'
  end
end
