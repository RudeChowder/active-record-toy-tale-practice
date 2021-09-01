class Purchase < ActiveRecord::Base
  belongs_to :kid
  belongs_to :toy

  def info
    "#{kid.name} bought #{quantity} #{toy.name} toys."
  end
end
