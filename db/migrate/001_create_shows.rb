class CreateShows < ActiveRecord::Migration
  def change
    create_table(:shows) {|t|
      t.string(:name)
      t.string(:network)
      t.string(:day)
      t.integer(:rating)
    }
  end
end
