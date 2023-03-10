class AddColumnToSearchers < ActiveRecord::Migration[7.0]
  def change
    add_column :searchers, :name, :string
    add_column :searchers, :contact, :string
    add_column :searchers, :address, :text
    add_column :searchers, :searcher_type, :string
  end
end
