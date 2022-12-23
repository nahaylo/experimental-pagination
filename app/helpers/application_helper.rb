module ApplicationHelper
  def benchmark_pagination_msg
    "=== Render pagination: #{controller_name} #{action_name} ==="
  end
end
