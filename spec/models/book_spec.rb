require 'spec_helper'

describe Book do
	let(:book) { Book.new(title: "Eat, Pray, Love") }

	describe "validations" do

		it "must have a title" do
			book = Book.create
			expect(book.errors[:title]).to include "can't be blank"
		end

		it "has unique title" do
			book
			invalid_book = Book.new(title: "Eat, Pray, Love")
			expect(invalid_book).to be_invalid
		end
	end

	describe "#upvote" do
		it "increases the upvotes field by one" do
			book
			upvotes = book.upvotes
			book.upvote!
			expect { book.upvote! }.to change(book, :upvotes).by(1)
		end
	end

end