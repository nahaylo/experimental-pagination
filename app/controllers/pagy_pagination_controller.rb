class PagyPaginationController < ApplicationController
  require "pagy_cursor/pagy/extras/cursor"
  require "pagy_cursor/pagy/extras/uuid_cursor"
  include Pagy::Backend

  def index
    @pagy, @miner_data = point
  end

  private

  def cursor_previous
    params[:cursor_previous]
  end

  def cursor_next
    params[:cursor_next]
  end

  def point
    @pagy, @miner_data = if cursor_previous
                        pagy_cursor(miner_data_scope, items: per_page, before: cursor_previous)
                      elsif cursor_next
                        pagy_cursor(miner_data_scope, items: per_page, after: cursor_next)
                      else
                        pagy_cursor(miner_data_scope, items: per_page)
                      end
  end
end
  