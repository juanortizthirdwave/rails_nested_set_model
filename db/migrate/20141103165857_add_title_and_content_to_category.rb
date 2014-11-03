class AddTitleAndContentToCategory < ActiveRecord::Migration
  def change
    change_table :categories do |t|
      t.string :content
      t.rename :name, :title
    end
  end
end
