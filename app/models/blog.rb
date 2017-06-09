class Blog < ApplicationRecord
  #enum - status for published / drafts blog posts
  enum status: { draft: 0, published: 1 }

  #for friendly url's
    extend FriendlyId
  friendly_id :title, use: :slugged

  #validate blog variables
  validate_presence_of :title, :body
  
end
