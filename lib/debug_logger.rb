class DebugLogger

  attr_reader :color, :storage, :debug_logger_utils

  def initialize(color = nil, storage = nil)
    @color = color
    @storage = storage
  end

  def log(log_text, log_color = nil, log_variables = nil, log_storage = nil)
    log_text = "\e[#{DebugLoggerUtils::color_signification(color ? color : log_color)}m #{log_text}====================#{log_variables ? log_variables : ''}====================\e[0m"

    DataStore.new(log_text).save_log if storage
    puts log_text
  end

  def color_lists
    puts requires.colors.join(' - ')
  end
end

require 'debug_logger/debug_logger_utils'
require 'debug_logger/data_store'
