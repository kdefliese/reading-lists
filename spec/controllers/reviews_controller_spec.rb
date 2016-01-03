require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

  describe "POST 'create'" do
    let(:book) do
      Book.create(title: "The Witches",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1,
      )
    end

    let(:params) do
      {
        review: {
          book_id: 1,
          body: "Nice pages.",
          reviewer:"Fred"
        },
        book_id: book.id
      }
    end

    it "creates a new review" do
      last_review = Review.last
      post :create, params.merge(book_id: book.id)
      expect(Review.last).to_not eq last_review
    end
  end

  describe "GET 'new'" do
    let(:book) do
      Book.create(title: "George's Marvellous Medicine",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1,
      )
    end
    
    let(:params) do
      {
        book_id: book.id
      }
    end

    it "renders the template for a new review" do
      get :new, params.merge(book_id: book.id)
      expect(subject).to render_template :new
    end
  end
end
