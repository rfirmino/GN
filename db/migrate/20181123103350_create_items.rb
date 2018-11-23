class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :quantidade
      t.float :valor
      t.references :produto, foreign_key: true
      t.references :pedido, foreign_key: true

      t.timestamps
    end
  end
end
