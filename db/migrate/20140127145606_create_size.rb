class CreateSize < ActiveRecord::Migration
  def change
    change_table :words do |t|
      t.integer :size
    end
  end
end
