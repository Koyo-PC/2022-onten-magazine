# 統計からAIへの進化

## はじめに

PC部のリーダーの小林です。中学１年の冬に仲間とPC部を始めて、活動できるのもこの音展が最後になりました。この5年間メンバーのそれぞれが興味のあることで自由に遊んできました。順当にいけば初期からいる僕はプログラミングが出来る側にいるはずなのですがなぜかそうじゃない。というわけでほかのメンバーの部誌より"プログラミング"というより"お話"という感じになります。

じゃあその"お話"とは何なのかというと今話題のAIはどのようにして現れたのかということです。というとよく巷で話されていることのようですが、それは第1次AIブーム（AIの誕生、チェスの解析など）から現在の第3次AIブーム（Deep Learningの台頭）への流れを説明するものが多くです。ここではそもそものAIの誕生、特に統計学とのつながりについて語りたいと思います。

ここで注意しておきたいのは、**統計学がAIに発展する過程をたどるのではなく（複雑すぎ）一般的な統計知識（具体的には数学ⅠA）から初歩のAIを理解してみようという試みです**。今後の表記で、Lv.1というような表記をするが、これは数字が大きい方が優れているとかではありません。Lv.1の推測統計学（頻度論）よりLv.2のベイズ統計学の方が勝っているということは全くないです。そもそも統計学を出発点としてAIを語るだけで統計学の上位互換としてAIがあるわけでもありません。そこの誤解がないよう。

あともう一点。"AI"という言葉は非常に定義が曖昧なものです。なのでここからはAIを実現する手法の１つである"機械学習"という言葉を用います。AI、機械学習、Deep Learningの違いはググれば解説記事がめちゃあるのでそちらを。

## 本題
