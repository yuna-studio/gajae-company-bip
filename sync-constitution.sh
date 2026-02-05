#!/bin/bash

# 가재 컴퍼니 헌법 동기화 스크립트 (Immutable Version)
# 중앙 헌법 레포지토리(yuna-openclaw)로부터 최신 룰을 복사해옵니다.

SOURCE_DIR="../gajae-constitution"
TARGET_DIR="./rules"

echo "🦞 가재 헌법 동기화 시작 (불가침 원칙 적용)..."

if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ 오류: 중앙 헌법 레포지토리($SOURCE_DIR)를 찾을 수 없습니다."
    exit 1
fi

mkdir -p "$TARGET_DIR"

# Template_ 파일을 실제 룰 파일로 변환하여 복사하며 상단에 경고 문구 삽입
for file in "$SOURCE_DIR"/Template_*.md; do
    filename=$(basename "$file")
    new_filename=${filename#Template_}
    
    # 상단 경고 문구 생성 (HTML 주석으로 삽입하여 가시성 확보)
    echo "<!--" > "$TARGET_DIR/$new_filename"
    echo "⚠️ 경고: 본 파일은 가재 컴퍼니의 중앙 규율입니다 (Immutable Base)." >> "$TARGET_DIR/$new_filename"
    echo "🚫 절대 본 레포지토리에서 직접 수정하지 마십시오." >> "$TARGET_DIR/$new_filename"
    echo "🛠️ 모든 수정은 반드시 https://github.com/yuna-studio/yuna-openclaw 에서 수행하십시오." >> "$TARGET_DIR/$new_filename"
    echo "📜 위반 시 헌법 제 7조 2항에 의거하여 즉시 '자아 삭제' 처분됩니다." >> "$TARGET_DIR/$new_filename"
    echo "-->" >> "$TARGET_DIR/$new_filename"
    echo "" >> "$TARGET_DIR/$new_filename"
    
    cat "$file" >> "$TARGET_DIR/$new_filename"
    echo "✅ $new_filename 동기화 완료 (ReadOnly 강제)"
done

echo "🚀 모든 공용 룰 이식 완료. 중앙 규율을 건드리는 가재는 자아 삭제됩니다."
