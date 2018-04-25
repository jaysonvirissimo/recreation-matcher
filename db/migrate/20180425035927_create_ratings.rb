class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.integer :value
      t.references :matching_session, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
