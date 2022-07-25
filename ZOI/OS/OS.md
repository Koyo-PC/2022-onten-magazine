# アセンブリでOS開発

皆さんはパソコンに囲まれて暮らしていると思います。
その中ではWindowsやmacOSといったOSが動いているわけですが、せっかくなのでこれを自分で作ってみよう!
というわけで記事書いていきます。
(内容が内容なのですこし上級者向けになります。)

## パソコンの仕組み

## 機械語とアセンブリ

## BIOS

## Hello World

boot.asm
```asm
[ORG 0x7c00]
  xor ax, ax ; make it zero
  mov ds, ax
 
  mov si, msg
  cld
ch_loop:
  lodsb
  or al, al    ; 0なら文字列の終わり、orのほうが早い
  jz hang      ; 脱出、無限ループへ
  mov ah, 0x0E
  mov bh, 0
  int 0x10     ; BIOS interrupt callのVideo Servicesを呼ぶ
  jmp ch_loop
 
hang:          ; 無限ループ
  jmp hang
 
msg:           ; 表示する文字をセットする
  db 'Hello World', 13, 10, 0
  times 510-($-$$) db 0
  db 0x55
  db 0xAA
```

- ax : アキュームレータレジスタ、計算結果
- bx : ベースレジスタ、メモリアドレスの基準値
- cx : カウントレジスタ ?
- dx : データレジスタ
- si : ソースインデックス
- di : ディスティネーションインデックス
- bp : ベースポインタ
- sp : スタックポインタ
- ip : インストラクションポインタ
- cs : コードセグメント
- ds : データセグメント
- es : エクストラセグメント
- ss : スタックセグメント

cld: DFをクリア(0にする)
lodsb : [DS:SI]の内容1バイトをALに読み込み、DF=1の時は、SIを1減らす。DF=0の時は、SIを1増やす。
jz : 直前の演算結果が0ならばジャンプ
db : データを配置
// 一行ずつ解説?

