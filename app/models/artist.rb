class Artist < ActiveRecord::Base
  has_many :songs

  def self.non_artist(artist_id)
    if self.find_by(id: artist_id)
      true
    else
      false
    end
  end
end
