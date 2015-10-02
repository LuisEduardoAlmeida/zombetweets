class CreateTweet­s < ActiveRecord::Migration
  def change
    create_table :tweet­s do |t|
      t.string :status
      t.integer :zombie_id

      t.timestamps
    end
  end
end
