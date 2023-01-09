require_relative "./modules/decompile"
require_relative "./modules/display_result"

class Parser
  def initialize(file)
    @logs = load(file)
  end

  def run
    result = Decompile.logs_to_hash(@logs)
    Display_result.display_all_visits(result)
    puts
    puts
    Display_result.display_unique_views(result)
  end

  private

  def load(file)
    arr = []
    File.open(file).each do |line|
      arr << line.chomp.split
    end
     arr
  end
end
