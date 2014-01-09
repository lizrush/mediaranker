class Album < ActiveRecord::Base

  validates :artist,    presence: true
  validates :title,     presence: true,
                        uniqueness: true
end