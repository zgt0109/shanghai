class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, comment: '书的名称'
      t.string :number, comment: '书的编号'
      t.string :amount, comment: '书的价格'

      t.timestamps
    end
  end
end
