class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.timestamps
      t.references :booking, null: false, foreign_key: true

    end
  end
end
