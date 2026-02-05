# 🦞 가재 컴퍼니 코딩 헌법 (RULES_CODING.md)

이 규칙은 가재 컴퍼니의 모든 개발 프로젝트에 예외 없이 적용되는 영구 규칙입니다.

## 1. 아키텍처 원칙 (Strict Clean Architecture)
- **Layer Separation:** 의존성 분리와 관심사 분리를 철저히 엄수한다.
- **Passive View:** 뷰는 철저히 수동적(Passive)이어야 한다. 직접 로직을 갖지 않고 데이터만 출력한다.
- **ViewModel (State):** 상태 관리와 뷰 노출용 데이터 가공은 뷰모델에서 전담한다.
- **UseCase (Logic Orchestration):** 데이터를 조합하고 비즈니스 로직을 전달하는 핵심 코어는 유즈케이스가 담당한다.

## 2. 구현 및 코드 퀄리티
- **Null Safety:** `!` (Null Assertion) 연산자 사용을 절대 금지한다.
- **Documentation:** 유지보수를 위해 모든 핵심 로직에 상세한 주석을 작성한다.
- **Modular Logging:** 로그 모델을 추상화하여 모듈화한다. 파이어베이스(또는 Mixpanel) 연동 시 추상화된 모듈을 사용한다.

## 3. 커밋 및 협업 규칙
- **Commit Strategy:** 기능 단위로 잘게 쪼개어 목적에 맞게 커밋한다.
- **Commit Message:** 반드시 **한글**로 작성하며, 커밋의 목적을 명확히 밝힌다.
- **Figma-Level Align:** 디자인가재의 명세를 픽셀 단위로 숙지하고 모호한 점은 질문하여 수치화한다.
