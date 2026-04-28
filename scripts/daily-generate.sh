#!/bin/bash
# Content Factory - 毎日記事生成 + GitHub自動push
# Usage: ./scripts/daily-generate.sh

set -e

# パス設定
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"
export HOME="/Users/yuichisaito"

PROJECT_DIR="/Users/yuichisaito/Desktop/content-factory"
LOG_DIR="$PROJECT_DIR/logs"
TODAY=$(date +%Y-%m-%d)

mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/$TODAY.log"

cd "$PROJECT_DIR"

echo "=== Content Factory 自動生成開始: $(date) ===" >> "$LOG_FILE"

# 最新の状態をpull
git pull origin main --rebase --no-edit >> "$LOG_FILE" 2>&1 || true

# Claude Codeで記事生成
claude --print "
今日（${TODAY}）の記事5本を作成してください。

## ルール（必読）
- このプロジェクトのルートは ${PROJECT_DIR}
- まず CLAUDE.md を読んで全ルールを把握する
- すべてのルールを必ず遵守する

## タスク
1. themes/article-plan-2000.csv から、まだoutputs/に作成されていない記事を選ぶ
2. aoshinから3本、cieloから2本選ぶ（カテゴリは前日と分散させる）
3. 過去のoutputs/を確認し重複しないことを確認
4. 各記事をMarkdown版とHTML版の両方で作成
5. ファイル名: outputs/aoshin/${TODAY}_NNN_slug.md / .html （NNNは001〜の連番）
   outputs/cielo/${TODAY}_NNN_slug.md / .html
6. 各記事は2000字前後、CLAUDE.md の絶対ルール（医療広告ガイドライン）を遵守
7. review/daily-review-log.md に当日の制作分を追記
8. リスク表現があれば review/medical-risk-check.md に記録
9. 完了後、git add, commit, push を実行

## コミットメッセージ形式
'feat: 記事追加 ${TODAY} (aoshin 3 / cielo 2)'

## 完了報告
作成した5記事のタイトル一覧と、各記事の医療広告チェック結果を出力してください。
" --allowedTools "Bash,Read,Write,Edit,Glob,Grep" >> "$LOG_FILE" 2>&1

EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
  echo "=== 生成完了: $(date) ===" >> "$LOG_FILE"
else
  echo "=== エラー終了 (code: $EXIT_CODE): $(date) ===" >> "$LOG_FILE"
fi

exit $EXIT_CODE
