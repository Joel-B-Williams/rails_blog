class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.integer :article_id, {null: false}
    	t.text :body, {null: false}
      t.timestamps
    end
  end
end
