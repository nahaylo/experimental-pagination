class ApplicationController < ActionController::Base
  def per_page
    25
  end

  private

  def miner_data_scope
    miner_data = MinerDatum.all

    if params[:created_from].present?
      miner_data = miner_data.where('created_at >= ?', params[:created_from])
    end

    if params[:created_to].present?
      miner_data = miner_data.where('created_at <= ?', params[:created_to])
    end

    if params[:updated_from].present?
      miner_data = miner_data.where('updated_at >= ?', params[:updated_from])
    end

    if params[:updated_to].present?
      miner_data = miner_data.where('updated_at <= ?', params[:updated_to])
    end

    miner_data
  end
end
