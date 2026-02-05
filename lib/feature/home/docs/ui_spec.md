# Hello Bebe - UI/UX Specification (MVP Realism Focus)

## 1. Design Vision: "Premium Clinical & Warmth"
- Focus on high-quality, professional photography aesthetics.
- Discard hand-painted/Ghibli styles.

### 🎨 Design Tokens (Deep-Dive Update)
- **Core Palette:**
  - `COLOR_PREMIUM_WHITE`: #FFFFFF (Clean canvas)
  - `COLOR_DEEP_CHARCOAL`: #1A1A1A (Sharp typography)
  - `COLOR_SOFT_GRAY`: #F5F5F7 (Subtle containers)
  - `COLOR_ACCENT_GOLD`: #C5A059 (Premium badge/buttons)
  - **Premium Gold Gradient:** `linear-gradient(135deg, #A67C00 0%, #BF9B30 25%, #FFBF00 50%, #BF9B30 75%, #A67C00 100%)`

- **Visual Principles:**
  - Standardized margins (16px/24px).
  - High-quality realistic baby photography as placeholders.
  - Smooth fades and minimal elevation.

## 2. Hero Section Specification (Figma-Level Align)

### A. Layout & Composition
- **Container**: Max-width 1280px, Center-aligned.
- **Padding**: Mobile 24px, Desktop 120px (Top/Bottom).
- **Gap**: 64px between Text content and Image/Slider content.
- **Alignment**: Vertical center for all elements within the Hero section.

### B. Spacing (Internal)
- **Eyebrow to Heading**: 16px.
- **Heading to Subtext**: 24px.
- **Subtext to CTA Button**: 48px.
- **CTA Button Padding**: 20px (Top/Bottom), 40px (Left/Right).

### C. Typography & Weight
- **Heading (H1)**: 
    - Size: 64px (Desktop), 36px (Mobile).
    - Weight: 800 (ExtraBold).
    - Letter-spacing: -0.04em.
    - Line-height: 1.1.
- **Eyebrow (Overline)**: 
    - Size: 14px.
    - Weight: 700 (Bold).
    - Letter-spacing: 0.1em (Uppercase).
    - Color: `#C5A059` (Accent Gold).
- **Subtext (Body)**: 
    - Size: 18px.
    - Weight: 400 (Regular).
    - Color: `#4B5563` (Gray-600).
    - Line-height: 1.6.

### D. Animations & Effects
- **Glow Animation Curve**: 
    - **Curve**: `cubic-bezier(0.45, 0.05, 0.55, 0.95)` (Soft Sine Ease-in-out).
    - **Keyframes**: 0% (Shadow 0px), 50% (Shadow 30px, 0.5 opacity), 100% (Shadow 0px).
    - **Duration**: 2.5s (Infinite).

### E. Interactive States (CTA Button)
- **Default**: 
    - Background: Gold Gradient, Border-radius: 9999px.
- **Hover**: 
    - Transform: `translateY(-4px) scale(1.02)`.
    - Effect: Box-shadow increase (10px 20px, 0.3 opacity).
    - Transition: `all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275)`.
- **Active**: 
    - Transform: `translateY(0px) scale(0.96)`.

## 3. Key Screen Flow
- **Home:** Minimalist. Large CTA "AI 실사화 시작하기".
- **Upload:** Focus on guidelines. Real-time face detection feedback.
- **Payment:** Clean sheet. Visual summary of the 3-photo package.
- **Result:** Gallery-style view with a "Save All" button at the bottom.
