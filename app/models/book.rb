# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  number     :string(255)
#  amount     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#  user_id    :integer
#
# Indexes
#
#  index_books_on_deleted_at  (deleted_at)
#  index_books_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_bc582ddd02  (user_id => users.id)
#

class Book < ApplicationRecord
  include AASM

  aasm :column => 'state' do
  end
	# acts_as_paranoid
	belongs_to :user

	before_validation do
    puts "before_validation"
  end

  after_validation do
    puts "after_validation"
  end

  before_save do
    puts "before_save"
  end

  around_save :test_around_save
  def test_around_save
    puts "begin around_save"
    yield
    puts "end around_save"
  end

  before_create do
    puts "before_create"
  end

	before_update do
    puts "before_update"
  end

  around_create :test_around_create
  def test_around_create
    puts "begin around_create"
    yield
    puts "end around_create"
  end

	around_update do
		puts "around_update"
	end

  after_create do
    puts "after_create"
  end

	after_update do
    puts "after_update"
  end

  after_save do
    puts "after_save"
  end

  after_commit do
    puts "after_commit"
  end

  after_rollback do
    puts "after_rollback"
  end
end
