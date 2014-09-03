class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :restaurant, index: true

      t.timestamps
    end
  end
end
