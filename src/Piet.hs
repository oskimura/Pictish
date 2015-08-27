module Piet where

data Val = VString String
         | VInteger Int

data Stack  = Nil
            | Stack Val Stack
               


data CP = R | L
data DP = Right | Left | Up | Down
data Env  = Env Stack  CP DP               

data Command = Push Val 
             | Pop 
             | Add Val Val
             | Subtract Val Val
             | Multiply Val Val
             | Divide Val Val
             | Mod Val Val
             | Not Val
             | Greater Val
             | Pointer 
             | Switch
             | Duplicate
             | Roll
             | In
             | Out

-- push: カラーブロックの示す整数値をスタックにプッシュします。ちなみにただカラーブロックがあるだけで 自動的にプッシュされるわけではないので値をプッシュしたい時は必ずこの命令を実行して下さい。
-- pop: スタックから1つポップしてその値を破棄します。
-- add: スタックから2つポップして加算した結果をスタックに積みます。
-- subtract: スタックから2つポップして2つ目にポップされた値から最初にポップした値を引いて結果をスタックに積みます。
-- multiply: スタックから2つポップして乗算した結果をスタックに積みます。
-- divide: スタックから2つポップして2つ目にポップされた値を最初にポップした値で割ってその商をスタックに積みます。
-- mod: スタックから2つポップして2つ目にポップされた値を最初にポップした値で割ってその余りをスタックに積みます。
-- not: スタックからポップした値が1なら0を、0なら0以外をスタックに積みます。
-- greater: スタックから2つポップして2つ目の値が1つ目より大きければ1を、そうでなければ0をプッシュします。
-- pointer: スタックから1つポップしてその値の分だけDPを時計回りに回転させます（負数なら反時計回り）。
-- switch: スタックから1つポップしてその値の分だけCCを切り替えます。
-- duplicate: スタックのトップの値をコピーしてプッシュします。
-- roll: スタックから2つポップして2つ目分の深さまでのスタックの値を一つ目の値の分だけ"回転"させます。 例えば「1つ分深さnだけ回転させる」はトップの値をスタックのn番目に埋め込み、n番目以前の値は 1つずつ上に上がることを意味します。負の数だけ回転させる場合は逆回転になります。深さが負の数になった場合はエラーとなり コマンドが無視されます。
-- in: その環境の標準入力(STDIN)から数値を受け取りスタックにプッシュします。
-- out: スタックから値をポップしてその環境の標準出力(STDOUT)に渡して出力します。




push :: Stack  -> Val -> Stack 
push  s val =
  Stack val s

pop :: Stack  -> Stack 
pop (Stack _ s) = s

  
      
  



  
  
  






