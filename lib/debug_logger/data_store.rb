class DebugLogger::DataStore

  attr_accessor :log

  def initialize(log)
    @log = log
  end

  def self.logs
    File.open('data_store/data.txt', 'r') do |f|
      f.each_line do |line|
        puts line
      end
    end
  end

  def self.reset_logs
    File.open('data_store/data.txt', 'w') { |file| file.truncate(0) }
  end

  def save_log
    File.write('data_store/data.txt', log, mode: 'a')
    File.write('data_store/data.txt', "\n", mode: 'a')
  end
end
