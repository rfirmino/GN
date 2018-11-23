class Fornecedor < ApplicationRecord
	has_many :emails, inverse_of: :fornecedor, dependent: :nullify
	has_many :telefones, inverse_of: :fornecedor, dependent: :delete_all
	has_many :produtos, inverse_of: :fornecedor, dependent: :destroy
  	accepts_nested_attributes_for :emails, reject_if: :all_blank, allow_destroy: false
  	accepts_nested_attributes_for :telefones, reject_if: :all_blank, allow_destroy: true
end
