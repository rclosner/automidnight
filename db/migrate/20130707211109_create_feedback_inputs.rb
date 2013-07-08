class CreateFeedbackInputs < ActiveRecord::Migration
  def change
    create_table :feedback_inputs do |t|
      t.integer :question_id
      t.integer :subject_id
      t.integer :neighborhood_id
      t.integer :property_id
      t.string :voice_file_url
      t.integer :numberical_response
      t.integer :phone_number

      t.timestamps
    end
  end
end