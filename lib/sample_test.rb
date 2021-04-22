# Minitestを使えるようにするコード
require 'minitest/autorun'

# テストコードの本体
# クラス名はTestで終わるか始まることが一般的
# ファイル名はクラス名に合わせる
# クラスはMinitestを継承している
# メソッド名はtest_からが必須条件。複数指定メソッド作成OK
class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', nil.upcase
  end
end
