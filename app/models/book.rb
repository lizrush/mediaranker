class Books < ActiveRecord::Base

	validates :title, :author, presence: true

end