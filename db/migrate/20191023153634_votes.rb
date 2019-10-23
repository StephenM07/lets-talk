class Votes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :ip_address
      t.references :post
      t.boolean :upvote
      t.timestamps
    end
  end
end
