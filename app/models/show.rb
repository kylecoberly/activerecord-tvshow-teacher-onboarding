class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where(:rating.eql?(self.highest_rating))
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where(:rating > 5)
  end

  def self.shows_by_alphabetical_order
    self.all.sort{ |x, y| x.name <=> y.name }
  end
end
