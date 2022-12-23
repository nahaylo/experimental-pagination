class MinerDatum < ApplicationRecord
  include OrderQuery
  order_query :order_home,
    [:id, :asc]
    # [:pinned, [true, false]], # First sort by :pinned over t/f in :desc order
    # [:published_at, :desc] # Next sort :published_at in :desc order
end
