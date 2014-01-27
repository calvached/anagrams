class CreateIndex < ActiveRecord::Migration
  def change
    add_index :words, :size
  end
end
