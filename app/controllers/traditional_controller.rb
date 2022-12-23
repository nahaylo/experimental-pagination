class TraditionalController < ApplicationController
  def index
    @miner_data = miner_data_scope.page(params[:page])
  end

  def wo_count
    @miner_data = miner_data_scope.page(params[:page]).without_count
  end
end
