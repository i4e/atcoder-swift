# atcoder-swift

Swift 4.2 で AtCoder がやりたい．

## Local Judge (暫定)

公式オンラインジャッジの Swift バージョンが 2.2 なので，ローカルでテストケースを実行する．

### Download Testcases

1. `.swift` ファイルがあるのと同ディレクトリに `test` ディレクトリを作成
2. [AtCoder's Testcases](https://www.dropbox.com/sh/arnpe0ef5wds8cv/AAAk_SECQ2Nc6SVGii3rHX6Fa?dl=0)からテストケースをダウンロード
3. `in/*.txt` を `*.in`, `out/*.txt` を `*.out` にリネームして，`test` ディレクトリにコピー

### Run Testcases

1. https://github.com/kmyk/online-judge-tools をインストール
2. `$ oj test -c ./[FILENAME].swift`
