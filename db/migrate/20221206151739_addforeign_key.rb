class AddforeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :movie, froreign_key: true
    add_reference :categories, :list, froreign_key: true
  end
end
