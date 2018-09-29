byteArray = File.open('src/min.hex', 'r')
  .read
  .tr('^10', '')
  .scan(/......../)
  .collect {|s| s.to_i 2}

File.open( 'build/min.wasm', 'w' ) do |output|
  byteArray.each do | byte |
    output.print byte.chr
  end
end
