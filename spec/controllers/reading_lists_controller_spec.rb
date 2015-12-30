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
  end
end
