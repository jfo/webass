#!/usr/bin/env ruby

byteArray = File.open('src/min.hex', 'r')
  .read
  .gsub(/\#.+\n/, '')
  .tr('^10', '')
  .scan(/......../)
  .collect {|s| s.to_i 2}


File.open( 'build/min.wasm', 'w' ) do |output|
  byteArray.each do | byte |
    output.print byte.chr
  end
end
