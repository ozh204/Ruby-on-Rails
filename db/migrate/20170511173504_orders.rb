class Orders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_waffles, id: false do |t|
    t.belongs_to :order, index: true
    t.belongs_to :waffle, index: true
  end
  end
end
