class Player 
	include Mongoid::Document 
field :check_post, type: Boolean 
field :horse_number, type: Integer 

belongs_to :game
belongs_to :user
has_many :submissions

end	