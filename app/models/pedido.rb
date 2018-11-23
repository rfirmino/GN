class Pedido < ApplicationRecord
  belongs_to :transportadora

  has_many :items, inverse_of: :pedido, dependent: :destroy
  has_many :produtos, through: :items

  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end
