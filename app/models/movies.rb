class Movies < ActiveRecord::Base

	validates :title, presence: true

end