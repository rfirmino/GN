class Produto < ApplicationRecord
  belongs_to :fornecedor, inverse_of: :produtos
end
