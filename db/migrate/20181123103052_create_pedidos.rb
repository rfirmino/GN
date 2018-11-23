class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.datetime :datahora
      t.string :notafiscal
      t.float :valorfrete
      t.float :desconto
      t.float :valortotal
      t.references :transportadora, foreign_key: true

      t.timestamps
    end
  end
end
