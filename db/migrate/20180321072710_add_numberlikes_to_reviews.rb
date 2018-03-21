class AddNumberlikesToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :numberlikes, :integer, :default => 0
  end
end
