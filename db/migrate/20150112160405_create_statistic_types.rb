# frozen_string_literal:true

class CreateStatisticTypes < ActiveRecord::Migration[4.2]
  def change
    create_table :statistic_types do |t|
      t.belongs_to :statistic_index, index: true
      t.string :key
      t.string :label
      t.boolean :graph

      t.timestamps
    end
  end
end
