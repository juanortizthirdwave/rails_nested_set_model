class CategoriesController < ApplicationController
  include TheSortableTreeController::Rebuild

  def index
  end

  def manage
    @pages = Category.nested_set
  end
end
