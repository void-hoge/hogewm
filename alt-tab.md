# alt-tab-likeなウィンドウセレクタの実装

## 1. xpywm/hogewmのウィンドウセレクタの問題
- 多数のウィンドウがある場合に使いづらい。
  - 表示しているだけで、行き来するウィンドウはせいぜい2つか3つ。
- ウィンドウの配置によっては、同時に表示できなくなる
  - 他のウィンドウが邪魔になることがある
  - raise windowを使えば解消できるが、マウスは使いたくない

## 2. Windows/MacOS/Gnomeなどにおけるalt-tab
- 直近でフォーカスしたウィンドウが最初に選択される
- alt-tabを押すと、選択ウィンドウが立ち上がり、tabを連続して押すことでウィンドウを選択、altを離すことでそのウィンドウにフォーカス

**これと似たようなものを実装するのが今回の目標**

## 3. 実装上の困難
- ctrl-mod1を離したときキーイベントが発生しない。
- control(capslock)のキーコードはstring(Control_LやCaps_Lock)から取れない。

![](capture1.png)

### 3.1. キーイベント問題
1. 前回の切り替えから一定時間(0.5秒程度)内ならば普通に選択され、そうでないなら直近に使用したウィンドウを選択
  - 数時間使ってみたところ、あまり便利ではなかった。
2. すべてのウィンドウでKeyReleaseイベントを出すように設定し、その時点で押されている全てのキーをXQueryKeymapでモニタ
  - emacsで動かない
  - セキュリティ上の問題
3. ctrl-mod1-iが押された時点でctrlとmod1をXAnyModifierでグラブ
  - 互いを互いのmodifierにしようとして(?)、うまく動かない
4. ctrl-mod1が押された時点でキーボード全体グラブ

### 3.2. キーコード問題
1. ライブラリに含まれる関数を用いた解決方法は思いつかなかった。
2. xmodmapをparseしてmodifierのキーコードを得る。

![](capture2.png)

## 4. 処理の流れ
1. ctrl-mod1-iが押される
   - ウィンドウ選択モードのとき
     - 次のウィンドウを選択
   - ウィンドウ選択モードでないとき
     - ウィンドウ選択モードにする
     - キーボード全体をグラブ(X.grab_keyboard)
     - 現在のウィンドウをスタックトップに置く
     - スタックの2番目を選択
2. ctrlかmod1が離される
   - ウィンドウ選択モードを終了
   - キーボード全体をアングラブ(X.ungrab_keyboard)
3. あとは適当にガワをつけるだけ

## 5. リポジトリ
- GitHub: https://github.com/void-hoge/hogewm.git
- GitHub: https://github.com/void-hoge/xpywm.git