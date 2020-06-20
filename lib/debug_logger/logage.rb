require 'date'

class DebugLogger::Logage

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
    storing.each do |data|
      if date
        puts "#{data[:log_message]} | AT #{data[:date]}"
      elsif
        puts data[:log_message]
      end
    end

    nil
  end

  private

  def initialize_storing
    [
      {
        log_message: 'Initialize DebugLogger logage',
        date: DateTime.now.strftime('%F %T')
      }
    ]
  end
end
