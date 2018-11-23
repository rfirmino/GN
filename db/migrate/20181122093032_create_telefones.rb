class CreateTelefones < ActiveRecord::Migration[5.2]
  def change
    create_table :telefones do |t|
      t.string :ddd
      t.string :numero
      t.string :referencia
      t.references :fornecedor, foreign_key: true

      t.timestamps
    end
  end
end
