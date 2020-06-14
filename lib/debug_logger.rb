class DebugLogger
  def self.log(color, text, variables = nil)
    requires = Requires.new(color)
    if variables
      puts "\e[#{requires.color_signification}m #{text}====================>#{variables}====================\e[0m"
    else
      puts "\e[#{requires.color_signification}m #{text}\e[0m"
    end
  end

  def self.log_space(color, text, variables = nil)
    requires = Requires.new(color)
    if variables
      puts "
        \n
        \e[#{requires.color_signification}m #{text}====================>#{variables}====================\e[0m
        \n
      "
    else
      puts "
        \n
        \e[#{requires.color_signification}m #{text}\e[0m
        \n
      "
    end
  end

  def self.color_lists
    requires = Requires.new
    puts requires.colors.join(' / ')
  end

  def self.commands
    puts "
      * DebugLogger::log(your_color, your_text, your_variable) \n
      * @your_color = Symbol | color of your log (DebugLogger::color_lists for list all colors) => require \n
      * @your_text = String | text of your log => require \n
      * @your_variable = All | variables to debug => optionnal \n
      * DebugLogger::log_space(your_color, your_text, your_variable) => log with space before and after \n
    "
  end
end

class DebugLogger::Requires

  attr_reader :color

  def initialize(color = nil)
    @color = color
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

  def colors
    [:black, :red, :green, :orange, :blue, :pink, :cyan, :white, :normal, :bold, :italic, :underline]
  end
end
