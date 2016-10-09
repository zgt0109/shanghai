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
	acts_as_paranoid
end
