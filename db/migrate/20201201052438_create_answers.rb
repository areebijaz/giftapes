class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true
      t.boolean :is_correct
      t.string :content

      t.timestamps
    end
  end
end
