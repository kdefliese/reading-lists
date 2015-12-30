class Book < ActiveRecord::Base
  belongs_to :reading_list
  has_many :reviews

  def get_image
    url = "https://www.googleapis.com/books/v1/volumes?q=#{self.title}&key=#{ENV['GOOGLE_KEY']}"
    response = HTTParty.get(url, verify: false).parsed_response

    unless response["totalItems"] == 0
      n = 0
      until response["items"][n]["volumeInfo"]["imageLinks"]
        n += 1
      end

      return response["items"][n]["volumeInfo"]["imageLinks"]["smallThumbnail"] #.gsub(/&zoom.*/, '') adding this this gets a full-size image, but they're not available for MANY books.
    else
      return "http://favim.com/orig/201105/12/book-cat-gato-heart-livro-Favim.com-42338.jpg"
    end

  end
end
