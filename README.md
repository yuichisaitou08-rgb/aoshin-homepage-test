# Content Factory

あおぞら新横浜クリニック / シエロアズール新横浜のSEO・GEO・LLMO対策用記事制作システム。

## 目的
- 2000記事の下書き作成（aoshin 1200 / cielo 800）
- 1日5記事ペース（aoshin 3 / cielo 2）
- 医療広告ガイドラインに配慮
- WordPress 貼り付け用 HTML 形式で出力

## フォルダ構成

```
content-factory/
├── CLAUDE.md                # プロジェクト恒久ルール（必読）
├── README.md                # このファイル
├── themes/                  # 企画・スケジュール管理
│   ├── article-plan-2000.csv
│   └── daily-batch-sample.csv
├── templates/               # 記事・HTML・チェックリストテンプレート
│   ├── article-template.md
│   ├── wp-html-template.html
│   ├── compliance-checklist.md
│   └── metadata-template.md
├── outputs/                 # 生成された記事
│   ├── aoshin/             # あおぞら新横浜クリニック
│   └── cielo/              # シエロアズール新横浜
└── review/                  # レビュー記録
    ├── daily-review-log.md
    ├── duplicated-topics.md
    └── medical-risk-check.md
```

## 運用ルール
詳細は [CLAUDE.md](./CLAUDE.md) を参照。
