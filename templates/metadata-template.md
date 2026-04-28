# メタ情報テンプレート

各記事Markdownファイルの冒頭にYAML Frontmatterで記載。

```yaml
---
id: ""                    # 連番4桁（0001〜2000）
site: ""                  # aoshin / cielo
title: ""                 # SEOタイトル（30〜32文字推奨、検索意図に沿う）
meta_description: ""      # 120字程度、自然な日本語
slug: ""                  # 英数字ハイフン区切り、ユニーク
parent_category: ""
child_category: ""
tags: []                  # 3〜5個

# キーワード
primary_keyword: ""
secondary_keywords: []

# 検索意図
search_intent: ""         # 情報収集 / 比較検討 / 行動 / 不安解消

# リスク管理
medical_risk_level: ""    # low / medium / high
local_angle: ""           # 必要な場合のみ（過度に新横浜・港北区は使わない）

# 監修
supervisor:
  name: ""
  qualification: ""

# 制作情報
last_updated: ""          # YYYY-MM-DD
references:
  - title: ""
    url: ""
internal_links:
  - title: ""
    url: ""
status: "draft"           # draft / reviewing / approved / published
---
```

---

## スラッグ命名規則

- 英数字とハイフンのみ
- 全角文字・スペース・アンダースコアは使わない
- 記事内容を簡潔に表す
- 30文字以内目安

### 良い例
- `health-checkup-blood-pressure`
- `flu-symptoms-2026`
- `picosure-spot-treatment`

### 悪い例
- `健康診断_血圧` （日本語・アンダースコア）
- `article-001` （内容を表していない）
- `the-best-clinic-in-shin-yokohama` （比較優良）

---

## カテゴリ・タグ運用

### parent_category（親カテゴリ）
- aoshin: 発熱・感染症 / 咳・呼吸器 / 健診異常 / 生活習慣病 / 頭痛・めまい / アレルギー / 睡眠時無呼吸 / 自由診療
- cielo: シミ・くすみ / レーザー治療 / 注入治療 / たるみ・リフト / 肌質改善 / 医療脱毛 / 美容医療基礎知識

### child_category（子カテゴリ）
親カテゴリの下にぶら下がる具体的なテーマ。

### tags
3〜5個。SEO・サイト内検索を意識して付与。
