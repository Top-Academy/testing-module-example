class Tweet < ApplicationRecord
  belongs_to :user, ->() { where(active: true).order('name desc') }
end
