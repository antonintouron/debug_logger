class DebugLogger::DebugLoggerUtils
  def self.color_signification(color)
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

  def self.colors
    [:black, :red, :green, :orange, :blue, :pink, :cyan, :white, :normal, :bold, :italic, :underline]
  end
end
