class AddQuestion2ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :question2, :string
  end
end
