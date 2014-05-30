class AddPriceToLineItems < ActiveRecord::Migration
  def change

  	    add_column :line_items, :price, :decimal,:precision => 8, :scale => 2
  	    LineItem.all.each do |line_item|
  	    	LineItem.update_all({price: line_item.product},{price: nil})
  	    end

  end
end
