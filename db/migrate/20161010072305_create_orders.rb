class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders, comment: '订单表' do |t|
      t.references :user, foreign_key: true, comment: '用户ID'
      t.string :number, comment: '订单编号'
      t.string :address, comment: '订单地址'

      t.timestamps
    end
  end
end
