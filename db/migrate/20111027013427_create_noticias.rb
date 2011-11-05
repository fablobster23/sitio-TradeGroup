class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :contenido
      t.string :imagen
      t.references :categoria

      t.timestamps
    end
    add_index :noticias, :categoria_id
  end
end
