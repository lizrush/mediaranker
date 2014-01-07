class Albums < ActiveRecord::Base

	validates :title, :artist, presence: true

end