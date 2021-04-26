# # => を使う記法
# {
#   :name => 'Alice',
#   :age => 20,
#   :gender => :female
# }

# # => を使わない記法
# {
#   name: 'Alice',
#   age: 20,
#   gender: :female
# }
# ーーーーーーーーー
# text = <<TEXT
# 私の郵便番号は1234567です。
# 僕の住所は6770056 兵庫県西脇市板波町1234だよ
# TEXT

# puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')
# # --------------
# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03-1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT
# p text.scan /\d\d-\d\d\d\d-\d\d\d\d/
# # => ["03-1234-5678"]
# # ---------------
# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT
# p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# ----------------
# <select name="game_console">
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>
# ---------------
# <select name="game_console">
# none,
# wii_u, Wii U
# ps4, プレステ4
# gb, ゲームボーイ
# </select>
# # -----------
# <select name="game_console">
# none,
# wii_u, Wii U
# ps4, プレステ4
# gb, ゲームボーイ
# </select>
# ------------
# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
# puts replaced
# --------------------

# def hello(name)
#   puts "Hello, #{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# -----------------
text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')
# ---------------
# :[ \t]*
{
  japan: 'yen',
  america: 'dollar',
  italy: 'euro'
}
# --------------
# , \t
name	email
alice	alice@example.com
bob	bob@example.com
# ----------
# ^.+heroku\/(api|scheduler).+$
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
