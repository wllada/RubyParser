module Display_result

  def self.display_all_visits(log_hash)
    arr = []
    log_hash.each do |site,views|
      arr << [site, views.length]
    end
    arr.sort_by!{|a| a[1]}.reverse.each do |log|
      print "#{log[0]} #{log[1]} visits "
    end
  end

  def self.display_unique_views(log_hash)
    arr = []
    log_hash.each do |site,views|
      arr << [site, views.uniq.length]
    end
    arr.sort_by!{|a| a[1]}.reverse.each do |log|
      puts "#{log[0]} #{log[1]} unique views "
    end
  end

end
