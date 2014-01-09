class Book < ActiveRecord::Base
attr_accessor :vote
  validates :author,    presence: true
  validates :title,     presence: true,
                        uniqueness: true
  before_save :upvote!, if: :vote

# POST books/:id/upvote
  def upvote!
 	 self.vote = nil
 	 self.upvotes += 1
	end

end
