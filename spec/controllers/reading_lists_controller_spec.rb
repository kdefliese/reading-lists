require 'rails_helper'

RSpec.describe ReadingListsController, type: :controller do

  describe "GET 'index'" do
    it "renders the index view" do
      get :index
      expect(subject).to render_template :index
    end
  end

  describe "GET 'new'" do
    it "renders the template for a new reading list" do
      get :new
      expect(subject).to render_template :new
    end
  end

  describe "POST 'create'" do
    it "creates a new reading list" do
      last_list = ReadingList.last
      post :create
      expect(ReadingList.last).to_not eq last_list
    end

    it "redirects to the root route" do
      post :create
      expect(subject).to redirect_to "/"
    end
  end

  describe "GET 'edit'" do
    let(:reading_list) do
      ReadingList.create(name: "poetry")
    end

    it "renders the edit template" do
      get :edit, id: reading_list.id
      expect(subject).to render_template :edit
    end
  end

  describe "GET 'show'" do
    let(:reading_list) do
      ReadingList.create(name: "biography")
    end
    it "shows the appropriate reading list" do
      get :show, id: reading_list.id
      expect(subject).to render_template :show
    end
  end
end
