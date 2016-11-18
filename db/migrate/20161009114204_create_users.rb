class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, comment: '用户模型' do |t|
      t.string :name, comment: '用户名'
      t.string :password_digest, comment: '密码'

      t.timestamps
    end
  end
end
