# 概要

弊社のrailsエンジニアに興味を持っていただき、ありがとうございます。
貴方のrailsエンジニアとしてのスキルチェックのため、下記の項目の共有をお願いいたします。

1. スキルを十分に確認できるプロジェクトあるいはソースコード
2. メインコーダーとなって開発した、実際に稼働中のプロダクト
3. サーバーサイドにrailsを採用する理由
4. コードを書く際に大切にしていること (特にrailsについて詳しく)
5. チーム開発において大切だと思うこと
6. 昨今のフロントエンド全般についてどう思うか (導入したいJSフレームワークなど)
7. 下記課題

1, 2に関しては共有が難しい場合もあると思いますので、3-7だけで構いません。
また、時間が限られている場合は7にフルコミットしていただければと思います。
その場合、3-6は面接の際に、お聞きする場合があります。

# 課題

課題に際して、不具合があったり質問がある場合は気軽に聞いてください。少しでも多くの時間、実装に割いて欲しいです。
課題は全て解ける必要はありません。限られた時間の中で、できる限りで提出していただいて構いません。
随所のロジックを含むコーディングや設計思想を拝見させていただきます。

初めに共有するneptuneには、最小限のテーブル設計がされています。
もちろん、設計を変えていただいて結構ですし、プロジェクトから作り直していただいて結構です。
シードデータとしてレシピデータが10件用意されています。

## 1. APIの実装

- レシピの一覧と詳細のAPIを作成してください。
  - APIの形式はJSON形式とします。
  - シードデータを投入すると、レシピに材料と手順が紐づいていますが、一覧ではそれらを返さず、詳細で返すような実装をしてください。
  - これは仮ですが、同時10接続、連続100回アクセスでもレスポンスタイムが50ms以内となるような設計をしてください。
  - パラメータに初回起動時間 (例：first_launched_at) を加えて、day0ユーザー (インストールから24時間以内) にブーストされているレシピを優先的(boostedがtrue)に表示する実装をしてください。
  - APIには必ずキャッシュを挟んでください。使用するキャッシュミドルウェアやサービスはお任せします。(その際、ページングや初回起動時間を考慮してください)
- APIが正しく返却されていると確かめられるようなテストを書いてください。

## 2. フロントエンド

- レシピ作成フォームを実装してください
  - 材料と手順を同じ画面で、追加・削除・並び替え(都度保存しなくて良い)が自由にできるようなフォームを作成してください。
  - テーブルに変更を加えて、動画やサムネイルをアップロードできればなお良いです (時間があれば)。
- 部分的にJSフレームワーク (React,Vue,Angular)などを用いてもらえるとなお良いです。
- 材料と手順はネストしたフォームを作成することになると思いますが、どのような仕組みを使うかは自由です。
- 誰でも使えるようなUI・UXにこだわってください。時間がない場合でも最低限Bootstrapを導入してください。

## 3. アルゴリズム
　
- レシピに紐づく食材データから、一つのレシピのカロリーと塩分量を算出するスクリプトを実装してください
 - DB設計も追加・変更など自由に変更して構いません。
  - カロリーはgで計算してください。
  - 豆苗の豚巻きのレシピで計算してください (シードデータではレシピに関わらず、豆苗の豚巻きのレシピの材料が投入されています)。
  - 計算は1人前でお願いします。
　- その際に、1パックなどの容量をg単位に変換する処理も加えてください。
  - カロリー算出に必要と思われる情報は以下の通りです。不足などある場合は都度聞いてください。

```
材料名            100gあたりのカロリー    100gあたりの食塩相当量    備考
もやし            14.0　                0.0
豆苗              27.0                 0.0                    1パックあたり100g
豚バラ肉           395.0                0.1
塩こしょう         116.0                66.0                    少々は0.5gとする
しょうゆ           71.0                14.5                    大さじ1あたり18.0g
鶏ガラスープの素    211.0                47.5                    小さじ1あたり2g
白いりごま        599.0                0.0                      大さじ1あたり9g
ラー油            919.0                0.0                     小さじ1あたり4g
```

- どこでどのように計算するのかが拝見したいです。

上記課題の提出は、ソースコードをGitHubにて公開 (可能ならばプライベート) して「@okutaku0507」と「@joooee0000」に共有してください。

以上です。
お忙しいと思いますが、よろしくお願いします。
