require 'test_helper'

class SampleModelTest < ActiveSupport::TestCase
  test "should save sample model with id from database" do
    sample_model = SampleModel.new(age: 23, name: "Super awesome name")
    sample_model.second_sample_models << SecondSampleModel.new(phone: "+65123", sample_model: sample_model)

    sample_model.transaction do
      if sample_model.save
        puts "Saving"
      end
      sample_model
    end

    puts sample_model.id
    puts sample_model.second_sample_models.first.sample_model_id

    assert_equal sample_model.id, SampleModel.all.last.id, "id should be equal"
  end
end
