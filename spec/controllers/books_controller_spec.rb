require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET 'index'" do
    it "renders the index view" do
      get :index
      expect(subject).to render_template :index
    end
  end

  describe "GET 'new'" do
    it "renders the template for a new book" do
      get :new
      expect(subject).to render_template :new
    end
  end

  describe "POST 'create'" do
    it "creates a new Book" do
      last_book = Book.last
      post :create
      expect(Book.last).to_not eq last_book
    end

    it "redirects to the books page" do
      post :create
      expect(subject).to redirect_to books_path
    end
  end

  describe "GET 'edit'" do
    let(:book) do
      Book.create(title: "Charlie and the Chocolate Factory",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1,
      )
    end

    it "renders the edit template" do
      get :edit, id: book.id
      expect(subject).to render_template :edit
    end
  end

  describe "GET 'show'" do
    let(:book) do
      Book.create(title: "Charlie and the Great Glass Elevator",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1
      )
    end

    it "shows the appropriate reading list" do
      get :show, id: book.id
      expect(subject).to render_template :show
    end
  end

  describe "PATCH 'update'" do
    let(:book) do
      Book.create(title: "James and the Giant Peach",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1
      )
    end

    let(:params) do
      {
        book: {
            title: "Fantastic Mr. Fox",
            author: "Roald Dahl",
            read_status: true,
            genre: "awesome",
            reading_list_id: 1
        },
        id: book.id
      }
    end

    it "updates the reading list" do
      before_update = book.attributes
      patch :update, params.merge(id: book.id)
      book.reload
      expect(book.attributes).to_not eq before_update
    end
  end

  describe "DELETE 'destroy'" do
    let(:book) do
      Book.create(title: "The Twits",
                  author: "Roald Dahl",
                  read_status: true,
                  genre: "awesome",
                  reading_list_id: 1,
      )
    end

    let(:params) do
      {
      id: book.id
    }
    end

    it "deletes a book" do
      expect(Book.all).to include(book)
      delete :destroy, params
      expect(Book.all).to_not include(book)
    end
  end
end
