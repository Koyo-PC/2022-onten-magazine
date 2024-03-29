---
title: 編集者へ
author: ZOI
---

今回部誌を書くときに、普通じゃない方法で書くので、その説明書です。

このドキュメントで`$ なんたらかんたら`って書いてる時は、`$`部分を消してコマンドプロンプト(Win)やターミナル(mac)で実行するって意味です。

作ってたら結構長くなりました...
読む気力があれば読んだらわかると思うけど、なければZOIに通話かけてくれれば教えます。

## 部誌編集の流れ

1. MarkdownエディタやGitなど、使うアプリをダウンロード
2. GitでGitHubからリポジトリをクローン
3. Gitでブランチを変更
4. エディタでmdファイルを編集
5. Gitでコミット・プッシュ
6. 4~5を繰り返す

## 1. アプリのダウンロード

### a. エディタ

部誌はMarkdownという形式で書いてもらうのですが、Markdown表示用のプラグインや専用エディタを使うと書きやすいです。

VSCodeやAtom、Sublime、Jetbrainsみたいなエディタならプラグインがあったと思うのでそれをダウンロードして、次の章へ進んでください。

「Typora」というMarkdownの編集に適しているエディタがあるので、それを使ってもいいです。
ダウンロード方法を書いておきます。いらない人は[b. Git](#b-git)まで飛ばしましょう

1. [Typoraのダウンロードページ](https://typora.io/releases/all)へアクセス
2. Typoraは最近正式リリースされたばかりで、正式リリースされた時に有料化したので、正式リリースする前のバージョンをダウンロードします
   上部の`Dev / Beta Releases`を選ぶ
3. 一番下までスクロールして、macなら`old macOS beta`、Windowsなら`old Windows / Linux beta`を選択
4. `Download v0.11.18`または`Download (Windows x64)`を選択してダウンロード→インストール
5. (任意) 2で言ったように正式版では有料なので、0.11.18からアップデートしないようにする
   Typoraを起動し、設定/一般/更新を自動的に確認 のチェックを外す

### b. Git

今回、複数人で部誌を書くことになるので、Gitという仕組みを使います。(Gitはめんどくさいけど後で色々便利になるのでお願いします)

Gitの素晴らしさは[これ](https://github.com/zenn-dev/zenn-docs/pull/29/files)を見たらわかると思います。どこが変わったかわかりやすいです。~~我が校の生徒会規約改定の時もこんな感じに(以下略~~

インストール方法は以下の通りです。入ってる人は[ここ](#2-リポジトリのクローン)まで読み飛ばしてください。

#### Windows

1. [Gitのダウンロードページ](https://git-scm.com/download/win)にアクセス
2. `Standalone Installer`のところの`64-bit Git for Windows Setup`からダウンロード→インストール

#### mac

- Xcode入れてる人は既に入ってます。
- Homebrew入れてる人は`$ brew install git`でインストールできます。
- それ以外の人は[ここ](https://sourceforge.net/projects/git-osx-installer/)の`Download`からインストーラをダウンロードして実行してください。

## 2. リポジトリのクローン

今回の部誌の原稿は全部GitHubというサービスで管理することにしました。
作業の前に、まずGitの考え方を軽く知っておかないといけません(まずこの章のタイトルがGit用語だらけでわからないと思います)。

[このページ](https://qiita.com/t-kubo0325/items/5a2b15cef0aaa92c9713)が比較的わかりやすかったです。他のページやProgateとかでもいいです。よくわからなかったらZOIに聞いてください。

さて、まずリモートリポジトリをローカルにコピーしないといけません。
リモートリポジトリはもう準備してあります。のでクローンです。

その前に、GitHubアカウントを作っておきましょう。GitHubのページで、右上のSignUpを押していい感じに登録してください。

終わったらKoyo-PCっていうGitHub上のグループがあるので、アカウント作ったメールアドレスを誰か既に入ってそうな人に伝えてください。招待します。

**(ここからもしかしたらSSHのセットアップってやつがいるかもしれないです。なんかエラー出たらZOIに教えてください。追記します。)**

Gitのコマンドが使える人は好きなディレクトリに移動して`$ git clone git@github.com:Koyo-PC/2022Onten-Magazine.git`を打ってください。特にオプションをつけなければ現在ディレクトリの**中に**`2022Onten-Magazine`ってフォルダができるので注意。

コマンドが好きじゃない人は、プログラミング用のエディタ(VSCodeとか、Jetbrainsとか...)ならエディタに内蔵されていることが多いのでググると出てきます。そうでない人はGitHub DesktopとかSourceTreeとかあるので何か入れましょう。

クローンする時のURLは`git@github.com:Koyo-PC/2022Onten-Magazine.git`です。

クローン先のフォルダをエクスプローラ(Finder)で見てみて、そこに`README.md`とか`LICENSE`とかが存在していたら成功です。

## 3. ブランチの変更

今回、誰がどんな内容を書くってのを特に決めてない状態から始まるので、「とりあえず好きな内容で文章を書いていく場所」へ移動します。

なんか難しそうに聞こえますが、`$ git checkout draft`を叩けば終わりです。
README.mdとかと同じところに他の人の書きかけの部誌(の入ったフォルダ)が増えていたら成功です。

## 4. mdファイルの変更

さてここまでMarkdownとかmdとか説明なしに書いてるので、ここで説明します。

MarkdownってのはWordみたいな文書を、ただのテキストで書けるようにしたものです。
よくわからないと思うので実例を。

次のような文章を書きたいとします。

> # タイトル
>
> あああ
>
> ここから段落ああああああああああああ
> いいいいいいいいいいいいいいいいいい
>
> ```java
> // プログラムも書けるよ!
> // 言語に応じて色もつくよ!
> public static void main(String name){
>   System.out.println("Hello, " + name + "!");
> }
> ```
>
> ~~取り消し線~~も**太字**も書ける!
> なんと表も書ける!
>
> | タイトル | 説明   |
> | -------- | ------ |
> | あああ   | すごい |

この文章をMarkdownで書くとこんな感じです。

````markdown
# タイトル

あああ

ここから段落ああああああああああああ
いいいいいいいいいいいいいいいいいい

```java
// プログラムも書けるよ!
// 言語に応じて色もつくよ!
public static void main(String name){
  System.out.println("Hello, " + name + "!");
}
```

~~取り消し線~~も**太字**も書ける!
なんと表も書ける!

| タイトル | 説明   |
| -------- | ------ |
| あああ   | すごい |

````

なんとなくわかりましたか?

「Markdown 〇〇 書き方」って検索すればなんでも出てきます。
書きたいけど出来なさそうな表現があれば言ってくれれば作れます。

じゃあ実際に書きましょう。

まずファイルを作ります。

今回は、できるだけmdファイルが混同しないようにするため、`/(名前)/(文書名).md`って感じで保存してください。
例えば`/ZOI/HelloWorld.md`みたいな感じです。基本的に1記事1ファイルでいいでしょう。
スクリーンショットとか入れる場合は`/(名前)/(文書名)/Picture1.png`みたいに置いておくとわかりやすいです。

ファイルを作ったら早速編集するんですが、基本的に自分以外のファイルをいじらないでください。同じファイルを複数人が触るとGitの操作がややこしくなります。まあ大体自動でやってくれますが。

ので、もし他人のファイルに誤字とか間違いを見つけた場合、GitHubのissue欄(TODOリストみたいなやつ)に書いておいてください。本人はそれを見て直してください。

あと、`#`、つまり一番大きい見出しを2個以上使うとそこでページが変わるようにするつもりなので、1つの記事(≈1つのmdファイル)に`#`を2つ以上設置するのはお勧めしません。気をつけてください。

## 5. コミット&プッシュ

さて編集が終わった、または途中までできた時は、その変更をGitHubにアップロードしましょう。

使っているGitクライアントによって違うのですが、大体
「コメントをつけてコミット」
→「プル」
→「プッシュ」
とやればうまくいきます。

コメントには、後から見てわかるようなメッセージを入れるのがいいです。つまり、「部誌更新」よりは「Web開発の話 JSの説明まで」の方がいいです。

ちなみにコミット1回につきプッシュ1回と決められているわけでは全くないので、コミットを5回くらいして一気にプッシュするのも全然OKです。

## 6. 繰り返す

あとは 編集→コミット→プッシュ を繰り返すだけです。がんばれ!

------

これで終わりです。めっちゃ長くなったけど。読んでくれてありがとう。
