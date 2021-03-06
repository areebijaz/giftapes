class Answer < ApplicationRecord
  has_many :answerings, dependent: :destroy
  validates :content, presence: true
  validates :letter, presence: true
  enum letter: [:a, :b, :c, :d]
  belongs_to :question
  ANSWERS = %w(A B C D)

  # name / label / title / to_s
  def to_label
    "#{letter}) #{content}"
  end
end
