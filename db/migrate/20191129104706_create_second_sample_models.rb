class CreateSecondSampleModels < ActiveRecord::Migration[5.0]
  def change
    create_table :second_sample_models do |t|
      t.references :sample_model, null: false
      t.string :phone

      t.timestamps
    end
  end
end
