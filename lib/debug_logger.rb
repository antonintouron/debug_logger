class DebugLogger
  def self.log(color, text, variables = nil, storage = nil, space = nil)
    requires = Requires.new(color, space)
    if variables
      log_text = "#{requires.space_signification} \e[#{requires.color_signification}m #{text}====================>#{variables}====================\e[0m #{requires.space_signification}"
    else
      log_text = "#{requires.space_signification} \e[#{requires.color_signification}m #{text}\e[0m #{requires.space_signification}"
    end

    DebugLogger::DataStore.new(log_text).save_log if storage
    puts log_text
  end

  def self.color_lists
    requires = Requires.new
    puts requires.colors.join(' - ')
  end
end

class DebugLogger::Requires

  attr_reader :color, :space

  def initialize(color = nil, space = nil)
    @color = color
    @space = space
  end

  def color_signification
    case color
    when :black
      30
    when :red
      31
    when :green
      32
    when :orange
      33
    when :blue
      34
    when :pink
      35
    when :cyan
      36
    when :white
      37
    when :normal
      38
    when :bold
      1
    when :italic
      3
    when :underline
      4
    else
      38
    end
  end

  def space_signification
    space ? "\n\n" : nil
  end

  def colors
    [:black, :red, :green, :orange, :blue, :pink, :cyan, :white, :normal, :bold, :italic, :underline]
  end
end

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
