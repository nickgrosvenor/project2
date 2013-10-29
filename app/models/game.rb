class Game 
	include Mongoid::Document
field :name, type: String
field :description, type: String
field :horse_number, type: Integer
field :frequency, type: Integer
field :start, type: DateTime

has_many :players 

end