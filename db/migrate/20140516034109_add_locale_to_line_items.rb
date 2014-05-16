class AddLocaleToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :locale, :text, default: 'en'
  end
end
