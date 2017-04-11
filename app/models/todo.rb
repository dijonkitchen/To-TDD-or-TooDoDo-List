class Todo < ApplicationRecord
  attr_writer :completed

  def completed?
    false
  end
end
