class Transportadora < ApplicationRecord
	has_many :transportadoras, inverse_of: :transportadoras
end
