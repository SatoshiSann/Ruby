# encoding: utf-8
puts('Hello World!');
puts("Hello #{ARGV[0]}!");
name = "name変数";
puts("式展開#{name}");
puts("式展開足し算#{4 + 5}");
puts(`date`);#``はコマンドとして使われる
status = $?;#終了ステータス???
puts <<END_OF_STRING
This is Japan.
This is America.
END_OF_STRING

puts <<"EOS"
My name is #{name}.
EOS

puts <<FIRST, <<SECOND
This is the first string.
FIRST
This is the second string.
SECOND


countDown = [1,2,3,4,5,6,7,8,9,10]
countDown.each{|count|
    puts count
}

mon = { "Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6,
    "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12 }
puts "mon[\"May\"]#{mon['May']}"    #=> 5
puts "mon[\"Oct\"]#{mon['Oct']}"    #=> 10

mon.each_key { |key|
    puts key                    #=> Aug, Oct, Feb...
}

mon.each_value { |val|
    puts val                    #=> 8, 10, 2...
}

mon.each_pair { |key, val|
    puts "#{key}=#{val}"        #=> Aug=8, Oct=10, Feb=2...
}