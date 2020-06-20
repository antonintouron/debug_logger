class DebugLogger

  attr_reader :color, :storage, :logage

  def initialize(color = nil, storage = nil)
    @color = color
    @storage = storage
    @logage = Logage.new
  end

  def log(log_text, log_color = nil, log_variables = nil, log_storage = nil)
    log_text = "\e[#{DebugLoggerUtils::color_signification(log_color ? log_color : color)}m #{log_text}====================#{log_variables ? log_variables : ''}====================\e[0m"

    logage.store(log_text) if storage || log_storage
    puts log_text
  end

  def logs(date = false)
    logage.data_storing(date)
  end

  def color_lists
    puts DebugLoggerUtils::colors.join(' - ')
  end
end

require 'debug_logger/debug_logger_utils'
require 'debug_logger/logage'
