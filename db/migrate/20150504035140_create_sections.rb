class CreateSections < ActiveRecord::Migration
  
  def change
    create_table :sections do |t|
      t.integer "page_id"
      # same as: t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.text "content"
      t.string "content_type"


      t.timestamps #null: false
    end
    add_index("sections", "page_id")
  end

end
