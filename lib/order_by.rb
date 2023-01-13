module Orderable
  extend ActiveSupport::Concern

  module ClassMethods
    # @param column [String]
    # @param direction [String] ASC | DESC
    # @param nulls [String] NULLS FIRST | NULLS LAST
    # @return [ActiveRecord::Relation] ordered active record relation
    def order_by(column, direction = nil, nulls = nil)
      sort_string = [column.underscore, direction.upcase, nulls.upcase].reject(&:blank?).join(' ')
      order(Arel.sql(sort_string))
    end
  end
end
