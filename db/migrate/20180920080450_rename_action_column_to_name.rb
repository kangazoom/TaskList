class RenameActionColumnToName < ActiveRecord::Migration[5.2]
  def change
    # Rails loves both symbols and implicit parens
    rename_column :tasks, :action, :name
  end
end
