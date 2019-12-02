class SecondSampleModel < ApplicationRecord
  belongs_to :sample_model, touch: true

  validates :sample_model, presence: true
end
