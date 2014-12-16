class Link < ActiveRecord::Base
  default_scope -> { order(votes: :desc) }
end
