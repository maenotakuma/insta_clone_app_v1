class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.text :body
      t.string :and
      t.string :be
      t.string :rails
      t.migrate :db

      t.timestamps
    end
  end
end
