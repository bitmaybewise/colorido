class Colorido
  RGB = Struct.new('RGB', :red, :green, :blue)
  Color = Struct.new('Color', :codename, :name, :hex, :rgb)

  def initialize
    csv_path = File.join(File.dirname(__FILE__), './colors.csv')
    @lines = File.readlines(csv_path)
  end

  def colors
    @colors ||= @lines.map do |line|
      codename, name, hex, *rgb_values = line.split(',')
      rgb = RGB.new(*rgb_values.map(&:chomp))
      Color.new(codename, name, hex, rgb)
    end
  end

  def names
    @names ||= colors.map(&:name)
  end

  def codenames
    @codenames ||= colors.map(&:codename)
  end

  def pick_random
    colors.sample
  end
end