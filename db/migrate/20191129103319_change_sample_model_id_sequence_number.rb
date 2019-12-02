class ChangeSampleModelIdSequenceNumber < ActiveRecord::Migration[5.0]
  def up
    execute("ALTER SEQUENCE sample_models_id_seq RESTART WITH 990900900")
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
