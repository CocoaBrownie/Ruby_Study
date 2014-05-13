####################
#title
#
#機能概要
#		テキストファイルの下3行を表示する。
#		テキストファイルが3行に満たない場合、ファイルの内容をすべて表示する。
#
#処理概要
#		1.引数検査
#		2.ファイル内容を行で配列
#		3.下3行表示
#

#引数は一つとする
if ARGV.size == 1 then
	
	#対象のファイルを開き、配列化
	File.open(ARGV[0]) do |file|
		lines = file.readlines
		
		if lines.size >= 3 then
			for i in lines.size - 3 ... lines.size do
				puts lines[i]
			end
		
		elsif lines.size < 3 then
			for j in 0 ... lines.size do
				puts lines[j]
			end
		
		else
			puts "[ERROR] 予期せぬエラー。ファイル不正。"
		end
	end
	
else
	puts "[ERROR] 引数不正"
end

