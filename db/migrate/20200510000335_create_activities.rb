class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :subject, polymorphic: true
      t.integer :action_type
      t.boolean :read
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
