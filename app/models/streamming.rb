class Streamming < ActiveRecord::Base
  belongs_to :canal
  attr_accessible :uri
end
