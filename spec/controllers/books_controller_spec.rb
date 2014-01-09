require 'spec_helper'

describe BooksController do
  
  describe "GET 'index'" do
    it "is successful" do
      get :index
      expect(response).to be_successful
    end

    it "assigns @books" do
      get :index
      expect(assigns(:books)).to_not be_nil
    end
  end

  describe "POST 'create'" do

    it "redirects to show page" do
      post :create, book: {title: "50 Shades of Grey", author: "Some lady?"}
      expect(response).to redirect_to book_path
    end
    
    it "assigns @book" do
      post :create
      expect(assigns(:book)).to_not be_a Book
    end

  end


end