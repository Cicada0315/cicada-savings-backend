class CreateInfocards < ActiveRecord::Migration[6.1]
  def change
    create_table :infocards do |t|
      t.string :title
      t.string :image_url
      t.text :summary
      t.text :content

      t.timestamps
    end
  end
end