class AddCouncilHistoryIdToCouncil < ActiveRecord::Migration
  def change
    add_column :councils, :council_history_id, :integer
  end
end
