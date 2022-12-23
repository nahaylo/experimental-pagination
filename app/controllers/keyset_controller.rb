class KeysetController < ApplicationController
  helper_method :cursor_previous_id, :cursor_next_id, :process_data

  def index
    @miner_data = point.limit(per_page)
  end

  private

  attr_reader :cursor_previous_id, :cursor_next_id

  def process_data
    @miner_data = @miner_data.to_a
    @miner_data = @miner_data.reverse if cursor_previous

    @cursor_previous_id = @miner_data.first.try(:id)
    @cursor_next_id = @miner_data.last.try(:id)
  end

  def cursor_previous
    if params[:cursor_previous]
      miner_data_scope.find_by_id(params[:cursor_previous])
    end
  end

  def cursor_next
    if params[:cursor_next]
      miner_data_scope.find_by_id(params[:cursor_next])
    end
  end


  def point
    @point ||= if cursor_previous
                 miner_data_scope.order_home_at(cursor_previous).before
               elsif cursor_next
                 miner_data_scope.order_home_at(cursor_next).after
               else
                 miner_data_scope.order_home
               end
  end
end
