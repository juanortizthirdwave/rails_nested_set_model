class Category < ActiveRecord::Base
  include TheSortableTree::Scopes
  acts_as_nested_set

  # any code here

end