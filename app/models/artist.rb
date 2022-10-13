class Artist < ApplicationRecord
  has_many :songs

  # def songs
  #   Song.where(artist_id: self.id)
  # end

  def average_song_length
    self.songs.average(:length)
  end

  def song_count
    self.songs.count
  end

  def wrote_song?(song)
    songs.include?(song)
  end
end