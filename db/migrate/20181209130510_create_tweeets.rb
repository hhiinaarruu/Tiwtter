class CreateTweeets < ActiveRecord::Migration
  def change
    create_table :tweeets do |t|
      t.text :tweeet

      t.timestamps null: false
    end
  end
end
