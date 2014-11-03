class CategoriesController < ApplicationController
  include TheSortableTreeController::Rebuild
  include TheSortableTreeController::ExpandNode

  def index
    @pages = Category.nested_set.select('id, title, content, parent_id').limit(15)
  end

  def nested_options
    @pages = Category.nested_set.select('id, title, content, parent_id').limit(15)
  end

  def manage
    @pages = Category.nested_set.select('id, title, content, parent_id').all
  end

  def node_manage
    @root  = Category.root
    @pages = @root.self_and_descendants.nested_set.select('id, title, content, parent_id').limit(15)
  end

  def expand
    @pages = Category.nested_set.roots.select('id, title, content, parent_id').all
  end
end
