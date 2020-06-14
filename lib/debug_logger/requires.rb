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
