class Submission 
	include Mongoid::Document 
field :url, type: String 
field :notes, type: String 

belongs_to :player



end	