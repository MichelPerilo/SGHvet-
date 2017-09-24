
class ChangeUsuarios < ActiveRecord::Migration
  def change
    change_table :usuarios do |t|
      t.string :username
      t.string :password
    end
  end
end