require 'date'

class DebugLogger::Log

  attr_accessor :storing

  def initialize
    @storing = initialize_storing
  end

  def store(log_text)
    storing << {
      log_message: log_text,
      date: DateTime.now.strftime('%F %T')
    }
  end

  def data_storing(date = nil)
    storing.each { |data| date ? puts "#{data[:log_message]} | at #{data[:date]}" : puts data[:log_message] }
  end

  private

  def initialize_storing
    [
      {
        log_message: 'Initialize DebugLogger log',
        date: DateTime.now.strftime('%F %T')
      }
    ]
  end
end
