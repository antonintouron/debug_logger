class DebugLogger
  def self.log(color, text, variables = nil, storage = nil, space = nil)
    requires = Requires.new(color, space)
    if variables
      log_text = "#{requires.space_signification} \e[#{requires.color_signification}m #{text}====================>#{variables}====================\e[0m #{requires.space_signification}"
    else
      log_text = "#{requires.space_signification} \e[#{requires.color_signification}m #{text}\e[0m #{requires.space_signification}"
    end

    DataStore.new(log_text).save_log if storage
    puts log_text
  end

  def self.color_lists
    requires = Requires.new
    puts requires.colors.join(' - ')
  end
end

require 'debug_logger/requires'
require 'debug_logger/data_store'
