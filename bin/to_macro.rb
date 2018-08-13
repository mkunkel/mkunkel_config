#! /usr/bin/env ruby

puts "KeyStrPress Shift_L\nKeyStrPress equal\nKeyStrRelease equal\nKeyStrPress semicolon\nKeyStrRelease semicolon\nKeyStrRelease Shift_L"
ARGV[0].chars.each do |char|
  if char == '_'
    puts "KeyStrRelease Shift_L\nKeyStrPress Shift_L\nKeyStrPress minus\nKeyStrRelease minus\nKeyStrRelease Shift_L"
  elsif char == '-'
    puts "KeyStrPress Shift_L\nKeyStrPress minus\nKeyStrRelease minus\nKeyStrRelease Shift_L"
  else
    puts "KeyStrPress #{char}\nKeyStrRelease #{char}"
  end
end

puts "KeyStrPress Return\nKeyStrRelease Return\nKeyStrPress Return\nKeyStrRelease Return"
