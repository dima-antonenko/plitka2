class CreateCollections < ActiveRecord::Migration
  def change

    create_table :collections do |t|
       t.string   "name"
	    t.string   "description"
	    t.string   "interior_list"
	    t.string   "brand"
	    t.string   "country"
	    t.string   "size"
	    t.string   "meta_title"
	    t.string   "meta_description"
	    t.string   "meta_keywords"
	    t.boolean  "to_bathroom"
	    t.boolean  "to_kitchen"
	    t.boolean  "to_corridor"
	    t.boolean  "to_living"
	    t.boolean  "to_fasad"
	    t.boolean  "to_floor"
	    t.boolean  "to_construction"
	    t.boolean  "to_public"
	    t.integer  "basic_category"
      t.timestamps null: false
    end

    create_table :connections do |t|
	    t.integer  "collection_id"
	    t.integer  "product_category_id"
    end

    add_column  :products, :collection_id, :integer
    add_column  :products, :code, :string
    add_column  :products, :edizm, :string
    add_column  :products, :field_of_application_list, :string
    add_column  :products, :place_in_the_collection, :string
    add_column  :products, :minpart, :string
    add_column  :products, :cratnost, :string
    add_column  :products, :weight, :string
    add_column  :products, :size, :string
    add_column  :products, :architectural_surface, :string
    add_column  :products, :base_value, :string
    add_column  :products, :color_value, :string
    add_column  :products, :cover_value, :string
    add_column  :products, :surface_alue, :string
    add_column  :products, :image, :string
    add_column  :products, :ballance, :integer
    add_column  :products, :ballance_count, :decimal
    add_column  :products, :category, :string
    add_column  :products, :design_value, :string
    add_column  :products, :frost_hardiness, :string
    add_column  :products, :rectified, :string
    add_column  :products, :to_bathroom, :boolean
    add_column  :products, :to_kitchen, :boolean
    add_column  :products, :to_corridor, :boolean
    add_column  :products, :to_living, :boolean
    add_column  :products, :to_fasad, :boolean
    add_column  :products, :to_floor, :boolean
    add_column  :products, :to_construction, :boolean
    add_column  :products, :to_public, :boolean

  end
end
