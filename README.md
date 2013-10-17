BrailleJa
=========

日本語と点字を扱う変換器です。Github Pagesに簡単なデモを作りました。

http://tadd.github.io/braille-ja/

## インストール

次の行をあなたのプログラムのGemfileに追加してください。

    gem 'braille-ja'

そして以下を実行します。

    $ bundle

もしくは、自力でインストールします。

    $ gem install braille-ja

## 使い方

まだまだ未熟なので、一部しか翻訳できないのをご注意ください。

    'あいうえお'.kana_to_braille
    # => "⠁⠃⠉⠋⠊"

## 貢献するには

1. Fork it!
2. 機能別ブランチを作る (`git checkout -b my-new-feature`)
3. 変更をコミットする (`git commit -am 'Add some feature'`)
4. リモートにpushする (`git push origin my-new-feature`)
5. Pull Request お願いします！
