require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp
if memo_type == "1"
 puts "拡張子を除いたファイル名を記入してください"
 file_name = gets.chomp
 puts "メモしたい内容を記入"
 puts "入力後、ctrl + D を押します"
 content = STDIN.read
 CSV.open("#{file_name}.csv","w") do |csv|
  csv << ["#{content}"]
 end
elsif memo_type == "2"
  puts "編集したいファイル名を拡張子を除いて記入してください"
  file_name = gets.chomp
  puts "編集したい内容を記入"
  puts "入力後、ctrl + D を押します"
  edit = STDIN.read
  CSV.open("#{file_name}.csv","a") do |csv|
   csv << ["#{edit}"]
  end
end