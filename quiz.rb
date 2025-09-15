# クイズアプリ

quizzes = [
  {q: "パンダの主食は何？", a: "竹"},
  {q: "人間の体の中で一番重い臓器は？", a: "肝臓"},
  {q: "地球の表面の約7割を占めているのは何？", a: "海"},
  {q: "ハチは何本足があるでしょう？ 数字で回答してね。", a: "6"},
  {q: "一円玉は何グラム？ 数字で回答してね。", a: "1"},
]

score = 0

quizzes.each do |quiz|
  puts "問題：#{quiz[:q]}"

  print "答えを入力してください："
  user_input = gets.chomp.strip # gets：ユーザ入力、chomp：改行削除、strip：空白削除
  
  if user_input == quiz[:a]
    puts "✅ 正解です！"
    score += 1
  else
    puts "❌ 不正解です...正解は「#{quiz[:a]}」です。"
  end
end

puts "あなたの正解数は#{score}/#{quizzes.length}です。"