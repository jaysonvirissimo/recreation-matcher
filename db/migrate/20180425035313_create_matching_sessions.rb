class CreateMatchingSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :matching_sessions do |t|
      t.references :starting_user, foreign_key: true
      t.references :following_user, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
