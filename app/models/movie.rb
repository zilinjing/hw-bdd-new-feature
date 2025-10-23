class Movie < ApplicationRecord
  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def others_by_same_director
    # Your code here #
    Movie.where(director: self.director).where.not(id: self.id)
  end
end
