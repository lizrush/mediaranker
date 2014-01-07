class Album < ActiveRecord::Base

	validates :title, :artist, presence: true

end