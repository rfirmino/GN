class Telefone < ApplicationRecord
  belongs_to :fornecedor, inverse_of: :telefones
end
