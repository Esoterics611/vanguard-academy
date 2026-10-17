# Vanguard Academy — ואנגארד אקדמי
## Full Technical Specification

> The first investment banking training program for decentralized finance.
> In Hebrew. For the next generation.

---

## 1. PRODUCT VISION

Vanguard Academy is a **dark, premium, membership learning platform** that transforms a comprehensive Hebrew-language textbook on DAO investment banking into a live, gamified, cohort-based educational experience for gifted Israeli students.

It is NOT a generic LMS. It's a **prestige machine** — every pixel, every interaction communicates: "This is serious. This is exclusive. You are becoming something."

Think: **Bloomberg Terminal meets Duolingo meets Y Combinator's Startup School** — dark, data-rich, gamified, career-launching.

### Core Principles
- **Prestige over accessibility** — dark UI, gold accents, IB rank titles, application-only cohorts
- **Hebrew-first, bilingual-native** — RTL layout, Hebrew UI, English financial/crypto terminology preserved naturally (the way Israeli finance actually works)
- **Gamification as motivation engine** — points, ranks, streaks, leaderboards, unlockable content (competitive gifted students thrive on this)
- **Every recording compounds value** — each live cohort produces permanent content that enriches the membership library
- **Zero external dependencies** — self-hosted, free tiers only, no SaaS lock-in

---

## 2. DESIGN SYSTEM

### 2.1 Color Palette

```
Background Layers:
  --bg-deep:        #050810    /* Deepest background — almost black with blue undertone */
  --bg-primary:     #0A0F1C    /* Main content background — dark navy */
  --bg-elevated:    #111827    /* Cards, panels — slightly lifted */
  --bg-surface:     #1E293B    /* Interactive surfaces — slate */
  --bg-hover:       #273548    /* Hover states */

Accent — Gold (Prestige):
  --gold-dim:       #92742D    /* Muted gold for borders, subtle elements */
  --gold:           #D4A853    /* Primary gold — rank badges, CTAs, highlights */
  --gold-bright:    #F5D485    /* Bright gold — active states, notifications */
  --gold-glow:      rgba(212, 168, 83, 0.15)  /* Gold glow for focus rings, card borders */

Text:
  --text-primary:   #F1F5F9    /* Primary text — near white */
  --text-secondary: #94A3B8    /* Secondary text — cool gray */
  --text-muted:     #64748B    /* Muted labels, timestamps */
  --text-gold:      #D4A853    /* Accent text */

Semantic:
  --success:        #10B981    /* Completed, earned, achieved */
  --info:           #3B82F6    /* Links, info states */
  --warning:        #F59E0B    /* Deadlines, alerts */
  --danger:         #EF4444    /* Errors, overdue */

Rank Colors (gradient pairs):
  Analyst:    #78716C → #A8A29E   (Bronze/Stone)
  Associate:  #94A3B8 → #CBD5E1   (Silver/Slate)
  VP:         #D4A853 → #F5D485   (Gold)
  Director:   #A78BFA → #C4B5FD   (Platinum/Violet)
  MD:         #38BDF8 → #7DD3FC   (Diamond/Cyan)
```

### 2.2 Typography

```
Hebrew body & headings:  "Heebo", sans-serif  (Google Fonts, free, excellent Hebrew)
English body & headings: "Inter", sans-serif   (pairs perfectly with Heebo)
Monospace / Financial:   "JetBrains Mono", monospace  (code, numbers, formulas)

Scale (mobile → desktop):
  Display:     2.5rem → 4rem     (landing hero)
  H1:          2rem → 3rem       (page titles)
  H2:          1.5rem → 2rem     (section headers)
  H3:          1.25rem → 1.5rem  (card titles)
  Body:        1rem → 1.125rem   (readable text)
  Small:       0.875rem          (labels, meta)
  Caption:     0.75rem           (timestamps, badges)

Line height: 1.7 for Hebrew body text (Hebrew needs more breathing room than English)
Direction: rtl for document, with dir="ltr" overrides on code blocks, English quotes, wallet addresses
```

### 2.3 Visual Elements

**Glassmorphism Cards:**
```css
.card {
  background: rgba(17, 24, 39, 0.7);
  backdrop-filter: blur(12px);
  border: 1px solid rgba(212, 168, 83, 0.08);
  border-radius: 16px;
  transition: border-color 0.3s, box-shadow 0.3s;
}
.card:hover {
  border-color: rgba(212, 168, 83, 0.2);
  box-shadow: 0 0 30px rgba(212, 168, 83, 0.05);
}
```

**Background Pattern:**
A subtle grid pattern reminiscent of financial chart paper — very low opacity (#0F172A lines at 2% opacity on --bg-deep). Optional: animated dots or slow-moving particle field on the landing page hero only.

**Rank Badge Design:**
Each rank gets a shield/hexagon badge with:
- Gradient fill matching rank colors
- Subtle inner glow
- The Hebrew rank title inside
- Appears on leaderboard, profile, course progress, and certificates

**Progress Visualization:**
A horizontal "career track" bar that shows the 6 Parts as connected nodes (like a subway map or pipeline). Completed Parts glow gold. Current Part pulses. Future Parts are dim. This appears on the dashboard and profile.

### 2.4 Motion & Interaction

- Page transitions: subtle fade (150ms) — nothing flashy, just polished
- Cards: scale(1.01) on hover with border-glow transition
- Numbers (points, streaks): count-up animation when they change
- Leaderboard: rank changes animate with slide up/down
- Achievement unlocks: brief gold shimmer + toast notification
- Skeleton loading states everywhere (no layout shift, no spinners)

### 2.5 RTL Strategy

```
<html dir="rtl" lang="he">
```

- All layouts flow RTL by default (Tailwind `rtl:` prefix utilities)
- Code blocks, wallet addresses, URLs, English blockquotes: override to `dir="ltr"`
- Financial terms in English stay inline: "ניתוח DCF של Aave" — no special treatment, this is natural Israeli finance language
- Numbers: LTR within RTL context (CSS `unicode-bidi: isolate` on numeric elements)
- Navigation: hamburger on right (RTL), logo on left

---

## 3. INFORMATION ARCHITECTURE

### 3.1 Public Pages (Marketing — Unauthenticated)

```
/                     Landing page — hero, value prop, social proof, CTA to apply
/about                About Vanguard DAO, the book, the methodology
/curriculum           Course overview — the 6 Parts displayed as a visual roadmap
/apply                Application form — name, age, background, motivation (stored in Supabase)
/masterclass          Free recorded masterclass — email gate for access
```

### 3.2 Academy Pages (Authenticated — Members & Cohort Students)

```
/academy                    Dashboard — the "home base"
/academy/course             Course library — all 6 Parts, expandable to chapters
/academy/course/[partId]    Part overview — chapters listed, progress shown
/academy/course/[partId]/[chapterId]   Lesson view — video + notes + exercises
/academy/leaderboard        Global leaderboard + cohort leaderboard tabs
/academy/cohort             Active cohort view — schedule, members, homework
/academy/cohort/capstone    Capstone project — submission, peer review, gallery
/academy/teardowns          Deal teardown archive — monthly analyses
/academy/profile            Personal profile — rank card, stats, certificates, settings
/academy/profile/[userId]   Public profile of another student (within the community)
/academy/certificates       Certificate viewer and download
```

### 3.3 Admin Pages

```
/admin                      Admin dashboard — key metrics
/admin/students             Student management — list, search, activate/deactivate
/admin/cohorts              Cohort management — create, assign students, schedule
/admin/content              Content management — add lessons, videos, exercises
/admin/payments             Payment verification — mark payments received
/admin/analytics            Engagement analytics — completion rates, active users
```

---

## 4. DATABASE SCHEMA (Supabase / PostgreSQL)

### 4.1 Core Tables

```sql
-- Users extend Supabase Auth
create table profiles (
  id uuid references auth.users primary key,
  full_name text not null,
  display_name text,
  email text not null,
  phone text,
  avatar_url text,
  bio text,
  age int,
  institution text,            -- university/school name
  background text,             -- application background
  motivation text,             -- why they want to join
  role text default 'applicant' check (role in ('applicant', 'member', 'cohort_student', 'premium', 'admin')),
  is_active boolean default false,
  points int default 0,
  current_streak int default 0,
  longest_streak int default 0,
  last_activity_at timestamptz,
  rank text generated always as (
    case
      when points >= 2001 then 'md'
      when points >= 1001 then 'director'
      when points >= 501 then 'vp'
      when points >= 201 then 'associate'
      else 'analyst'
    end
  ) stored,
  telegram_username text,
  telegram_chat_id bigint,
  payment_method text,
  payment_verified_at timestamptz,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- The 6 Parts of the book
create table parts (
  id text primary key,          -- 'part-1', 'part-2', etc.
  number int not null,
  title_he text not null,       -- Hebrew title
  title_en text,                -- English title (optional)
  description_he text,
  icon text,                    -- Lucide icon name
  sort_order int not null,
  is_published boolean default true
);

-- Chapters within Parts
create table chapters (
  id text primary key,          -- 'chapter-1', 'chapter-2', etc.
  part_id text references parts(id),
  number int not null,
  title_he text not null,
  title_en text,
  description_he text,
  video_url text,               -- YouTube unlisted URL or Cloudflare Stream
  video_duration_minutes int,
  notes_markdown text,          -- Lesson notes in Markdown
  book_url text,                -- Link to corresponding MkDocs page
  exercises_json jsonb,         -- Array of exercise objects
  points_value int default 10,  -- Points earned on completion
  sort_order int not null,
  is_published boolean default true,
  requires_role text default 'member'  -- minimum role to access
);

-- Student progress
create table progress (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references profiles(id),
  chapter_id text references chapters(id),
  status text default 'not_started' check (status in ('not_started', 'in_progress', 'completed')),
  completed_at timestamptz,
  time_spent_minutes int default 0,
  created_at timestamptz default now(),
  unique(user_id, chapter_id)
);

-- Cohorts
create table cohorts (
  id uuid default gen_random_uuid() primary key,
  name text not null,           -- e.g., "קוהורט אלפא — אביב 2026"
  slug text unique not null,
  description_he text,
  start_date date not null,
  end_date date not null,
  max_students int default 40,
  price_ils int,                -- Price in ILS agorot (e.g., 250000 = ₪2,500)
  status text default 'upcoming' check (status in ('upcoming', 'active', 'completed', 'archived')),
  whatsapp_link text,
  telegram_link text,
  created_at timestamptz default now()
);

-- Cohort membership
create table cohort_members (
  cohort_id uuid references cohorts(id),
  user_id uuid references profiles(id),
  role text default 'student' check (role in ('student', 'ta', 'instructor')),
  joined_at timestamptz default now(),
  primary key (cohort_id, user_id)
);

-- Cohort sessions (live lectures)
create table sessions (
  id uuid default gen_random_uuid() primary key,
  cohort_id uuid references cohorts(id),
  chapter_id text references chapters(id),
  title_he text not null,
  scheduled_at timestamptz not null,
  duration_minutes int default 90,
  meeting_url text,             -- Jitsi/Meet link
  recording_url text,           -- YouTube unlisted URL after recording
  status text default 'scheduled' check (status in ('scheduled', 'live', 'completed', 'cancelled')),
  notes text
);

-- Homework submissions
create table submissions (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references profiles(id),
  chapter_id text references chapters(id),
  cohort_id uuid references cohorts(id),
  file_url text,                -- Supabase Storage URL
  text_content text,            -- Or inline text submission
  grade text check (grade in ('outstanding', 'good', 'needs_work', 'resubmit')),
  feedback text,                -- Instructor feedback
  points_awarded int default 0,
  submitted_at timestamptz default now(),
  graded_at timestamptz
);

-- Deal teardowns (monthly content)
create table teardowns (
  id uuid default gen_random_uuid() primary key,
  title_he text not null,
  title_en text,
  dao_name text,                -- e.g., "Lido", "Aave", "Uniswap"
  event_type text,              -- e.g., "merger", "tge", "governance", "treasury"
  video_url text,
  notes_markdown text,
  published_at timestamptz,
  is_published boolean default false
);

-- Points log (audit trail for gamification)
create table points_log (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references profiles(id),
  action text not null,         -- 'chapter_complete', 'homework_submit', 'streak_bonus', 'teardown_attend', 'peer_review'
  points int not null,
  reference_id text,            -- chapter_id, submission_id, etc.
  created_at timestamptz default now()
);

-- Certificates
create table certificates (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references profiles(id),
  type text not null check (type in ('part_completion', 'course_completion', 'cohort_graduation', 'premium_distinction')),
  part_id text references parts(id),
  cohort_id uuid references cohorts(id),
  issued_at timestamptz default now(),
  certificate_url text,         -- Generated PDF URL
  verification_code text unique -- Public verification code
);

-- Notifications
create table notifications (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references profiles(id),
  type text not null,
  title_he text not null,
  body_he text,
  link text,
  is_read boolean default false,
  created_at timestamptz default now()
);
```

### 4.2 Key Views & Functions

```sql
-- Leaderboard view
create view leaderboard as
select
  p.id, p.display_name, p.avatar_url, p.points, p.rank,
  p.current_streak, p.institution,
  count(distinct pr.chapter_id) filter (where pr.status = 'completed') as chapters_completed,
  row_number() over (order by p.points desc) as position
from profiles p
left join progress pr on pr.user_id = p.id
where p.is_active = true and p.role != 'admin'
group by p.id;

-- Function to award points and update profile
create or replace function award_points(
  p_user_id uuid,
  p_action text,
  p_points int,
  p_reference_id text default null
) returns void as $$
begin
  insert into points_log (user_id, action, points, reference_id)
  values (p_user_id, p_action, p_points, p_reference_id);

  update profiles set
    points = points + p_points,
    last_activity_at = now(),
    updated_at = now()
  where id = p_user_id;
end;
$$ language plpgsql security definer;

-- Function to update streaks (called daily via cron or on activity)
create or replace function update_streak(p_user_id uuid) returns void as $$
declare
  v_last_activity date;
  v_current_streak int;
begin
  select last_activity_at::date, current_streak
  into v_last_activity, v_current_streak
  from profiles where id = p_user_id;

  if v_last_activity = current_date - 1 then
    update profiles set
      current_streak = current_streak + 1,
      longest_streak = greatest(longest_streak, current_streak + 1)
    where id = p_user_id;
  elsif v_last_activity < current_date - 1 then
    update profiles set current_streak = 1 where id = p_user_id;
  end if;
end;
$$ language plpgsql security definer;
```

### 4.3 Row Level Security

```sql
-- Profiles: users can read all active profiles, edit only their own
alter table profiles enable row level security;
create policy "Public profiles readable" on profiles for select using (is_active = true);
create policy "Own profile editable" on profiles for update using (auth.uid() = id);

-- Progress: users can only see/modify their own
alter table progress enable row level security;
create policy "Own progress" on progress for all using (auth.uid() = user_id);

-- Chapters: visible based on role
alter table chapters enable row level security;
create policy "Published chapters for members" on chapters for select using (
  is_published = true and (
    requires_role = 'member' or
    exists (select 1 from profiles where id = auth.uid() and role in ('cohort_student', 'premium', 'admin'))
  )
);

-- Submissions: own only + admin
alter table submissions enable row level security;
create policy "Own submissions" on submissions for select using (auth.uid() = user_id);
create policy "Submit own" on submissions for insert with check (auth.uid() = user_id);
create policy "Admin reads all" on submissions for select using (
  exists (select 1 from profiles where id = auth.uid() and role = 'admin')
);
```

---

## 5. PAGE-BY-PAGE SPECIFICATION

### 5.1 Landing Page ( / )

**Purpose:** Convert visitors into applicants. This page sells the dream.

**Layout:**
```
┌─────────────────────────────────────────────────┐
│  NAVBAR: Logo (left/RTL:right) | קוריקולום | אודות | הגשת מועמדות  │
├─────────────────────────────────────────────────┤
│                                                 │
│  HERO SECTION (full viewport height)            │
│  Background: subtle grid + slow particle drift  │
│                                                 │
│  [Gold shield badge icon]                       │
│                                                 │
│  הדור הראשון של בנקאי ההשקעות המבוזרים          │
│  (The First Generation of Decentralized         │
│   Investment Bankers)                           │
│                                                 │
│  Subtitle: תוכנית הכשרה מקצועית בבנקאות          │
│  השקעות ל-DAOs — בעברית, בשידור חי, עם קהילה   │
│                                                 │
│  [CTA Button: הגישו מועמדות — gold, large]       │
│  [Secondary: צפו במאסטרקלאס חינם →]              │
│                                                 │
│  Stats bar (animated count-up):                 │
│  20 פרקים | 6 חלקים | 150+ מקרי בוחן | ...      │
│                                                 │
├─────────────────────────────────────────────────┤
│                                                 │
│  WHAT YOU'LL BECOME (not "what you'll learn")   │
│  3-column grid with gold-bordered glass cards:  │
│                                                 │
│  [🏦 בנקאי השקעות]  [📊 מעריך שווי]  [⚡ יועץ]  │
│  DeFi IB Analyst    Protocol Valuator  Advisor  │
│  Learn to analyze   Master DCF, comp  Guide     │
│  DAO treasuries...  analysis for...   DAOs...   │
│                                                 │
├─────────────────────────────────────────────────┤
│                                                 │
│  CURRICULUM ROADMAP                             │
│  Visual "subway map" of the 6 Parts:            │
│  ○─── Part I ───○─── Part II ───○─── etc.       │
│  With hover-expand showing chapter titles       │
│                                                 │
├─────────────────────────────────────────────────┤
│                                                 │
│  HOW IT WORKS                                   │
│  4-step horizontal flow:                        │
│  1. הגשת מועמדות → 2. קבלה לקהילה →             │
│  3. הצטרפות לקוהורט → 4. הסמכה                  │
│                                                 │
├─────────────────────────────────────────────────┤
│                                                 │
│  SOCIAL PROOF                                   │
│  Testimonial cards (after Cohort 1) +           │
│  "מבוסס על הספר" with link to MkDocs book site  │
│  University logos where students come from       │
│                                                 │
├─────────────────────────────────────────────────┤
│                                                 │
│  PRICING SECTION                                │
│  Two cards side by side:                        │
│                                                 │
│  [חברות — ₪149/חודש]    [קוהורט — ₪2,500]       │
│   Recorded library        Everything in חברות    │
│   Community access         + Live weekly lecture │
│   Monthly teardowns        + Personal feedback   │
│   Office hours             + Capstone project    │
│   Leaderboard              + WhatsApp group      │
│   Certificates             + Graduation cert     │
│                                                 │
│  Both cards: gold border on hover, glass bg      │
│  Active cohort card: "נותרו 12 מקומות" badge     │
│                                                 │
├─────────────────────────────────────────────────┤
│  FOOTER: Links | Telegram | Book site | © 2026  │
└─────────────────────────────────────────────────┘
```

### 5.2 Dashboard ( /academy )

**Purpose:** The command center. Bloomberg-terminal energy — dense, data-rich, empowering.

**Layout:**
```
┌──────────────────────────────────────────────────────────┐
│ SIDEBAR (RTL: right side)                                │
│ ┌─────────┐                                              │
│ │ Logo    │  Dashboard                                   │
│ │         │  הקורס                                       │
│ │ [Rank   │  לוח מובילים                                 │
│ │  Badge] │  קוהורט                                      │
│ │         │  ניתוחי עסקאות                                │
│ │ שם      │  פרופיל                                      │
│ │ אנליסט  │  ─────                                       │
│ │ 142 נק' │  [Admin link if admin]                       │
│ └─────────┘                                              │
├──────────────────────────────────────────────────────────┤
│ MAIN CONTENT AREA — Grid layout                          │
│                                                          │
│ ┌──────────────────┐ ┌──────────────────┐                │
│ │ WELCOME CARD     │ │ RANK PROGRESS    │                │
│ │ שלום, [שם]!      │ │ [Progress bar]   │                │
│ │ Streak: 🔥 7 ימים│ │ אנליסט → עמית    │                │
│ │ Next: פרק 4.2    │ │ 142/201 נקודות   │                │
│ │ [המשך ללמוד →]   │ │ [Badge visual]   │                │
│ └──────────────────┘ └──────────────────┘                │
│                                                          │
│ ┌─────────────────────────────────────────┐              │
│ │ COURSE PROGRESS — "Career Track" Bar    │              │
│ │ ●━━━●━━━●━━━○╌╌╌○╌╌╌○╌╌╌○              │              │
│ │ I    II  III  IV   V   VI               │              │
│ │ Gold  Gold Gold Pulse Dim  Dim          │              │
│ │ 100%  100% 40%                          │              │
│ └─────────────────────────────────────────┘              │
│                                                          │
│ ┌──────────────────┐ ┌──────────────────┐                │
│ │ LEADERBOARD MINI │ │ UPCOMING         │                │
│ │ Top 5 + your pos │ │ Next session:    │                │
│ │ 1. דנה    892 🥇 │ │ 📅 יום ג׳ 19:00  │                │
│ │ 2. אורי   841 🥈 │ │ פרק 5 — הערכת    │                │
│ │ 3. יעל    798 🥉 │ │ שווי יחסית      │                │
│ │ ...               │ │ [הצטרף →]        │                │
│ │ 14. אתה   142    │ │                  │                │
│ │ [צפה בכולם →]    │ │ Next teardown:   │                │
│ └──────────────────┘ │ 📅 1 במרץ, 20:00 │                │
│                      └──────────────────┘                │
│                                                          │
│ ┌─────────────────────────────────────────┐              │
│ │ RECENT COMMUNITY ACTIVITY               │              │
│ │ • דנה השלימה פרק 7.2 — מבנה עסקאות     │              │
│ │ • אורי הגיש עבודת קפסטון               │              │
│ │ • ניתוח עסקה חדש: מיזוג Lido-StakeWise │              │
│ │ [→ פתח טלגרם]                           │              │
│ └─────────────────────────────────────────┘              │
└──────────────────────────────────────────────────────────┘
```

### 5.3 Course / Lesson View ( /academy/course/[partId]/[chapterId] )

**Purpose:** Where learning happens. Clean, focused, no distractions.

**Layout:**
```
┌──────────────────────────────────────────────────────────┐
│ BREADCRUMB: הקורס > חלק III — מיזוגים ורכישות > פרק 7.1 │
├──────────────────────────────────────────────────────────┤
│                                                          │
│ ┌────────────────────────────────────────┐ ┌───────────┐ │
│ │                                        │ │ SIDEBAR   │ │
│ │   VIDEO PLAYER                         │ │           │ │
│ │   (YouTube embed, 16:9)                │ │ Chapters: │ │
│ │   Dark background, rounded corners     │ │ ✓ 7.1     │ │
│ │   Custom minimal controls overlay      │ │ ● 7.2     │ │
│ │                                        │ │ ○ 8.1     │ │
│ │                                        │ │ ○ 8.2     │ │
│ │                                        │ │ ○ 8.3     │ │
│ ├────────────────────────────────────────┤ │ ○ 8.4     │ │
│ │                                        │ │ ○ 9.1     │ │
│ │   LESSON NOTES (rendered Markdown)     │ │ ...       │ │
│ │   - Key concepts                       │ │           │ │
│ │   - Formulas (KaTeX rendered)          │ │ ────────  │ │
│ │   - Links to relevant book pages       │ │ Part prog │ │
│ │                                        │ │ ███░░ 40% │ │
│ │                                        │ │           │ │
│ │   EXERCISES (expandable section)       │ │ Points:   │ │
│ │   - Multiple choice from review Qs     │ │ +10 🪙    │ │
│ │   - Free response                      │ │ on finish │ │
│ │   - "Open in Dune Analytics" links     │ │           │ │
│ │                                        │ │ [📖 Book] │ │
│ ├────────────────────────────────────────┤ └───────────┘ │
│ │                                        │               │
│ │   ACTION BAR                           │               │
│ │   [✓ סימון כהושלם — gold button]       │               │
│ │   [📤 הגשת תרגיל] [→ פרק הבא]         │               │
│ │                                        │               │
│ └────────────────────────────────────────┘               │
└──────────────────────────────────────────────────────────┘
```

### 5.4 Leaderboard ( /academy/leaderboard )

**Purpose:** Competition engine. Make progress visible and social.

Two tabs: **כלל התוכנית** (Global) | **הקוהורט שלי** (My Cohort)

Each entry:
```
┌──────────────────────────────────────────┐
│ #3  [Avatar]  יעל כהן                    │
│     VP 🟡  |  798 נקודות  |  🔥 12 ימים  │
│     14/20 פרקים  |  טכניון                │
└──────────────────────────────────────────┘
```

Top 3 get enlarged cards with gold/silver/bronze borders. Your own position is always visible (pinned at bottom if not in visible range).

### 5.5 Profile ( /academy/profile )

**Purpose:** Personal identity within the community. The "LinkedIn profile" of Vanguard Academy.

**Layout:**
```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  RANK CARD (hero banner)                                 │
│  ┌────────────────────────────────────────────────────┐  │
│  │  Background: gradient matching current rank         │  │
│  │                                                    │  │
│  │  [Large Avatar]     שם מלא                         │  │
│  │  [Rank Badge]       סגן נשיא (VP)                  │  │
│  │                     798 נקודות | 🔥 12 ימים          │  │
│  │                     טכניון — הנדסת מחשבים            │  │
│  │                     הצטרף: ינואר 2026                │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  PROGRESS HEAT MAP (GitHub-style contribution grid)      │
│  Shows daily activity over the last 12 weeks             │
│  Each square: gold intensity based on that day's activity│
│                                                          │
│  STATS ROW                                               │
│  [14/20 פרקים] [3 תעודות] [2 עבודות קפסטון] [קוהורט α] │
│                                                          │
│  CERTIFICATES (card grid)                                │
│  [Part I ✓] [Part II ✓] [Part III ✓] [Cohort α 🎓]     │
│  Each is a clickable card that opens the PDF certificate │
│                                                          │
│  CAPSTONE GALLERY                                        │
│  Submitted capstone projects displayed as cards          │
│  with title, DAO name, grade badge, date                 │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

### 5.6 Admin Dashboard ( /admin )

**Purpose:** Your command center for running the business.

Key widgets:
- **Active members count** (with trend arrow)
- **Revenue this month** (manual tracker based on verified payments)
- **Cohort status** (upcoming sessions, homework pending review)
- **Recent applications** (quick approve/reject)
- **Engagement metrics** (DAU, completion rates, average session time)
- **Quick actions**: Verify payment, Add student to cohort, Publish teardown

---

## 6. GAMIFICATION SYSTEM

### 6.1 Ranks (IB Career Ladder)

| Rank | Hebrew | Points | Badge Color | Perks |
|------|--------|--------|-------------|-------|
| Analyst | אנליסט | 0–200 | Bronze (#78716C) | Base access |
| Associate | עמית | 201–500 | Silver (#94A3B8) | Community highlights |
| VP | סגן נשיא | 501–1000 | Gold (#D4A853) | Deal teardown access |
| Director | מנהל | 1001–2000 | Platinum (#A78BFA) | Premium content preview |
| MD | מנכ"ל | 2001+ | Diamond (#38BDF8) | Mentor badge, admin nomination |

### 6.2 Point Sources

| Action | Points | Frequency |
|--------|--------|-----------|
| Complete a chapter | 10 | Per chapter (20 total = 200 max) |
| Submit homework | 20 | Per assignment |
| Homework graded "Outstanding" | 10 bonus | Per grade |
| Daily streak bonus | 5 | Per day of consecutive activity |
| Attend live session | 15 | Per session |
| Attend deal teardown | 10 | Per teardown |
| Submit capstone project | 50 | Once per cohort |
| Complete a Part | 30 bonus | Per Part (6 total = 180 max) |
| Complete entire course | 100 bonus | Once |
| Peer review (future) | 5 | Per review |

### 6.3 Achievements (Badges)

Displayed on profile, unlocked with toast notifications:
- **ראשון** (First) — Complete your first chapter
- **מתמיד** (Persistent) — 7-day streak
- **בוער** (On Fire) — 30-day streak
- **חלק I–VI** — Complete each Part
- **בוגר** (Graduate) — Complete all 20 chapters
- **מעריך שווי** (Valuator) — Complete Part II (Valuation)
- **עושה עסקאות** (Dealmaker) — Complete Part III (M&A)
- **קפסטון** (Capstone) — Submit capstone project
- **מנטור** (Mentor) — Help 5 other students (future social feature)

---

## 7. TELEGRAM BOT SPECIFICATION

### 7.1 Bot Commands

```
/start              — Welcome message + registration link
/progress           — Show personal progress summary
/leaderboard        — Top 10 + your position
/streak             — Current streak and encouragement
/next               — What chapter to study next
/schedule           — Upcoming sessions and teardowns
/rank               — Current rank and points to next rank
/help               — List all commands
```

### 7.2 Automated Messages

- **Daily prompt** (9:00 AM Israel time): A concept question from the current week's chapter. "🤔 שאלת היום: מהו היתרון של ניתוח DCF על פני הערכת שווי יחסית עבור פרוטוקולי DeFi?"
- **New member welcome**: Brief onboarding with links to dashboard, first chapter, and community guidelines.
- **Streak reminders** (7:00 PM): If the student hasn't logged activity today and their streak is at risk. "🔥 הרצף שלך בן 5 ימים! אל תשבור אותו — פתח פרק חדש היום."
- **Weekly summary** (Friday): Points earned, rank change, chapters completed, leaderboard position.
- **Achievement announcement** (to group): When someone ranks up or completes a Part. "🎉 דנה עלתה לדרגת סגן נשיא (VP)! 798 נקודות."

### 7.3 Integration Architecture

```
Telegram Bot API
       ↕ (webhook)
  Next.js API route: /api/telegram/webhook
       ↕
  Supabase (read/write user data, progress, points)
       ↕
  Bot logic (Node.js in the same Next.js app)
```

The bot webhook URL is set to your Vercel deployment. All bot logic lives in `/app/api/telegram/webhook/route.ts`. No separate bot hosting needed.

---

## 8. CERTIFICATE GENERATION

### 8.1 Design

Certificates are generated as PDF from an HTML template rendered server-side:

- **Background**: Dark navy (#0A0F1C) with subtle gold border pattern
- **Header**: Vanguard Academy logo + gold shield
- **Title**: "תעודת השלמה" / "תעודת הסמכה" in gold
- **Body**: Student name, what they completed, date, verification code
- **Rank badge**: Their current rank at time of completion
- **Footer**: QR code linking to `/verify/[code]` for public verification
- **Signature line**: Your name as founder/instructor

### 8.2 Generation Flow

1. Student completes final chapter of a Part → trigger certificate generation
2. API route `/api/certificates/generate` creates HTML from template, renders to PDF (using Puppeteer or @react-pdf/renderer)
3. PDF uploaded to Supabase Storage
4. Certificate record created in `certificates` table
5. Notification sent to student (in-app + Telegram)
6. Public verification URL: `/verify/[verification_code]` — shows certificate status (anyone can verify)

---

## 9. TECH STACK SUMMARY

| Layer | Technology | Why |
|-------|-----------|-----|
| Framework | Next.js 15 (App Router) | RSC, API routes, SSR, ISR — all in one |
| Hosting | Vercel Free Tier | Zero config, edge network, generous free tier |
| Database | Supabase (PostgreSQL) | Auth + DB + Storage + Realtime — all free tier |
| Auth | Supabase Auth (magic link + email/password) | Zero cost, built-in, secure |
| Styling | Tailwind CSS + shadcn/ui | RTL support via `rtl:` utilities, dark mode |
| Fonts | Google Fonts: Heebo + Inter + JetBrains Mono | Free, fast CDN |
| Video hosting | YouTube Unlisted | Free, unlimited, reliable |
| Live sessions | Jitsi Meet or Google Meet | Free, no account needed (Jitsi) |
| Recording | OBS Studio | Free, open source |
| Community | Telegram Supergroup + Bot API | Free, Israeli students' native platform |
| Cohort chat | WhatsApp groups | Intimate, familiar, free |
| Payments | Bit / PayBox / bank transfer / crypto | Israeli native, zero processing fees |
| Certificates | HTML → PDF (Puppeteer or @react-pdf) | Generated server-side on Vercel |
| Analytics | Plausible (self-hosted) or Umami | Privacy-friendly, free self-hosted |
| Markdown rendering | next-mdx-remote or react-markdown | For lesson notes and teardown content |
| Math rendering | KaTeX | For formulas (DCF equations, etc.) |
| Email (future) | Resend free tier (3K emails/month) or Buttondown | For welcome emails, weekly digest |

---

## 10. DEPLOYMENT & INFRASTRUCTURE

### Environment Variables

```env
# Supabase
NEXT_PUBLIC_SUPABASE_URL=https://xxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...
SUPABASE_SERVICE_ROLE_KEY=eyJ...

# Telegram
TELEGRAM_BOT_TOKEN=123456:ABC-DEF...
TELEGRAM_WEBHOOK_SECRET=random-secret-string
TELEGRAM_GROUP_CHAT_ID=-100xxxxxxxxx

# App
NEXT_PUBLIC_APP_URL=https://academy.vanguarddao.com
NEXT_PUBLIC_BOOK_URL=https://nimble-churros-f18291.netlify.app

# Optional future
RESEND_API_KEY=re_xxx
```

### Custom Domain

Point `academy.vanguarddao.com` (or `academy.vanguard-dao.co.il`) to Vercel via CNAME. Free SSL included.

---

## 11. CONTENT SEEDING

### Initial Data to Populate

The 6 Parts and 20 Chapters need to be seeded from your book's table of contents. Here's the structure:

```json
{
  "parts": [
    {
      "id": "part-1", "number": 1,
      "title_he": "יסודות בנקאות ההשקעות המבוזרת",
      "title_en": "Foundations",
      "chapters": ["chapter-1", "chapter-2"]
    },
    {
      "id": "part-2", "number": 2,
      "title_he": "הערכת שווי",
      "title_en": "Valuation",
      "chapters": ["chapter-3", "chapter-4", "chapter-5", "chapter-6"]
    },
    {
      "id": "part-3", "number": 3,
      "title_he": "מיזוגים ורכישות",
      "title_en": "M&A",
      "chapters": ["chapter-7", "chapter-8", "chapter-9", "chapter-10"]
    },
    {
      "id": "part-4", "number": 4,
      "title_he": "אירועי יצירת טוקן",
      "title_en": "Token Generation Events",
      "chapters": ["chapter-11", "chapter-12", "chapter-13", "chapter-14"]
    },
    {
      "id": "part-5", "number": 5,
      "title_he": "גיוס הון",
      "title_en": "Capital Raising",
      "chapters": ["chapter-15", "chapter-16", "chapter-17"]
    },
    {
      "id": "part-6", "number": 6,
      "title_he": "ייעוץ אסטרטגי",
      "title_en": "Strategic Advisory",
      "chapters": ["chapter-18", "chapter-19", "chapter-20"]
    }
  ]
}
```

Videos will be added per chapter as cohorts are recorded. Initially, chapter pages show the lesson notes and book link, with a "הסרטון יתווסף עם הקוהורט הראשון" (Video will be added with Cohort 1) placeholder.

---

This spec is the single source of truth for building the platform. The PROMPTS.md file provides the exact build instructions broken into phases.
