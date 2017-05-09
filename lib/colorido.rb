class Colorido
  attr_reader :lines

  def initialize
    csv_path = File.join(File.dirname(__FILE__), './colors.csv')
    @lines = File.readlines(csv_path)
  end
end