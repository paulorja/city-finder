class AddUnnacentToDb < ActiveRecord::Migration[5.2]
  def up
    execute 'create extension unaccent'
  end

  def down
    execute 'drop extension unaccent'
  end
end
