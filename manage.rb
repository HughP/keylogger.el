def index_to_digraph index
  (index / 96 + 32).chr + (index % 96 + 32).chr
end

def load_data data
  (0...data.length).map do |i|
    digraph = index_to_digraph(i)
    if data[i][1] != 0
      cps = data[i][1] / data[i][0]
      wpm = cps * (1.0 / 5) / (1.0 / 60)
      [digraph, wpm]
    else
      nil
    end
  end.delete_if { |x| x == nil }.sort { |x, y|
    x[1] <=> y[1]
  }.each do |digraph, wpm|
    puts "#{digraph}: #{wpm.to_i}"
  end

end

load "keys.jsonp" # calls load_data(data)


