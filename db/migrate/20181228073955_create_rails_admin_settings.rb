class CreateRailsAdminSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :rails_admin_settings do |t|
      t.boolean :enabled, default: true
      t.string :kind, null: false, default: 'string'
      t.string :ns, default: 'main'
      t.string :key, null: false
      if Object.const_defined?('Geocoder')
        t.float :latitude
        t.float :longitude
      end
      t.text :raw
      t.string :label
      if defined?(Paperclip)
        t.attachment :file
      elsif defined?(CarrierWave)
        t.string :file
      end
      t.timestamps
    end

    add_index :rails_admin_settings, :key
    add_index :rails_admin_settings, [:ns, :key], unique: true
    Settings.can_reward_after_registe?(kind: 'boolean', default: 'true', label: "是否奖励100积分")
    Settings.debug?(kind: 'boolean', default: 'false', label: '开发模式')
  end
end

