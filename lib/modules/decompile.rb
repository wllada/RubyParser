module Decompile

  def self.get_keys(log_array)
    keys = []
    log_array.each do |log|
      if !keys.include?(log[0])
        keys << log[0]
      end
    end
    keys
  end

  def self.get_unique_pairs(log_array)
    result = []
    log_array.each do |log|
      if !result.include?([log[0],log[1]])
        result << [log[0],log[1]]
      end
    end
    result
  end

  def self.logs_to_hash(log_array)
    result = {}
    log_array.each do |log|
      if result.key?(log[0])
        result.fetch(log[0]) << log[1]
      else
        result.store(log[0],[])
        result.fetch(log[0]) << log[1]
      end
    end
    result
  end
end
