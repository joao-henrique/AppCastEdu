class EntityColab < ActiveRecord::Base

  has_and_belongs_to_many :children,
      :class_name => "EntityColab",
      :join_table => "children_containers",
      :foreign_key => "container_id",
      :association_foreign_key => "child_id"

    has_and_belongs_to_many :containers,
      :class_name => "EntityColab",
      :join_table => "children_containers",
      :foreign_key => "child_id",
      :association_foreign_key => "container_id"

    def root?
      self.containers.empty?
    end

    def leaf?
      self.children.empty?
    end

    def to_s(level=0)
      "#{'  ' * level}#{name}\n" + children.map {|c| c.to_s(level + 1)}.join
    end


end
