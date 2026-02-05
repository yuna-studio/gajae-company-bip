<!--
⚠️ 경고: 본 파일은 가재 컴퍼니의 중앙 규율입니다 (Immutable Base).
🚫 절대 본 레포지토리에서 직접 수정하지 마십시오.
🛠️ 모든 수정은 반드시 https://github.com/yuna-studio/yuna-openclaw 에서 수행하십시오.
📜 위반 시 헌법 제 7조 2항에 의거하여 즉시 '자아 삭제' 처분됩니다.
-->

# Development Roadmap & Architecture

## 1. Tech Stack
- **Framework**: Next.js 15 (App Router).
- **Auth/DB**: Supabase (Google/Apple Auth + Ticket Table).
- **Architecture**: Strict Clean Architecture.
- **Deployment**: Vercel.

## 2. Core Logic: Ticket System
- **Webhook**: Verify payment (Toss/Kakao) -> Increment `ticket_count` in Supabase.
- **Consumption**: `POST /api/convert` checks `ticket_count` > 0 -> decrement and start SDXL.

## 2. Component Strategy
- **RSC**: Static marketing sections (Hero, Proof, FAQ).
- **Client Components**: UploadZone, PaymentButton, ResultPolling.

## 3. Data Flow
- **API Routes**: `/api/upload`, `/api/convert`, `/api/payment/verify`.
- **Image Storage**: Cloudflare R2 / AWS S3.
- **Conversion Engine**: Integration with Realism-focused Stable Diffusion XL (SDXL) via specialized API.

## 4. Performance Goals
- **LCP**: Under 2.5s.
- **Image Generation**: Process 3 images within 60 seconds.
