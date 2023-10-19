class ClassSubject < ApplicationRecord
  belongs_to :user

  validates :name, :code, :description, presence: true
end
