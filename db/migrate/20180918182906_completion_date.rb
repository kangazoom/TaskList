class CompletionDate < ActiveRecord::Migration[5.2]
  def change

    # Rails loves both symbols and implicit parens
    add_column :tasks, :completion_date, :date
  end
end
