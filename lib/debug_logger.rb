class DebugLogger
  def self.log(color, text, variables = nil, space = nil)
    requires = Requires.new(color, space)
    if variables
      puts "#{requires.space_signification} \e[#{requires.color_signification}m #{text}====================>#{variables}====================\e[0m #{requires.space_signification}"
    else
      puts "#{requires.space_signification} \e[#{requires.color_signification}m #{text}\e[0m #{requires.space_signification}"
    end
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
