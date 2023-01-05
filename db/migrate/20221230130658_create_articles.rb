class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      
      t.string :title
      t.text :description
      t.boolean :status, default: true
      t.string :blog_type
      t.string :blog_views

      t.timestamps
    end
  end
end
