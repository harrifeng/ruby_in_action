class Hash
end

inst_section = {
    'cello ' => 'string',
    'clarinet' => 'woodwind',
    'violin' => 'string'
}

puts inst_section
puts inst_section['violin']

# use hash to count the number
histogram = Hash.new(0)
histogram['key1']
puts histogram['key1']
histogram['key1'] = histogram['key1'] + 1;
puts histogram['key1']