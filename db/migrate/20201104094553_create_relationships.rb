class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }

      t.string :follower_id
      t.string :followed_id
      t.string :id
      t.timestamps

      t.index [:user_id, :follow_id], unique: true
    end
  end
end
