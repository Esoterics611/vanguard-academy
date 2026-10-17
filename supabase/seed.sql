-- Vanguard Academy — Content Seed Data
-- Maps directly to the book at nimble-churros-f18291.netlify.app

-- ============================================================
-- PARTS (6 Parts of the book)
-- ============================================================

INSERT INTO parts (id, number, title_he, title_en, description_he, icon, sort_order) VALUES
('part-1', 1, 'יסודות בנקאות ההשקעות המבוזרת', 'Foundations',
 'הכירו את עולם ה-DAOs כישויות כלכליות, את תפקיד בנקאות ההשקעות במימון מבוזר, ואת מסגרות הניתוח הפיננסי הייחודיות לפרוטוקולים.',
 'building-2', 1),

('part-2', 2, 'הערכת שווי', 'Valuation',
 'שלטו בשיטות הערכת שווי מ-DCF דרך ניתוח חברות מקבילות ועד מודלים מתקדמים של ערך רשת ואופציות ריאליות.',
 'calculator', 2),

('part-3', 3, 'מיזוגים ורכישות', 'Mergers & Acquisitions',
 'הבינו מדוע DAOs מתמזגים, כיצד לבצע בדיקת נאותות, לבנות מבני עסקאות, ולנהל שילוב לאחר מיזוג.',
 'git-merge', 3),

('part-4', 4, 'אירועי יצירת טוקן', 'Token Generation Events',
 'למדו לתכנן TGE מקצה לקצה — מעיצוב טוקנומיקס דרך אסטרטגיית הפצה ועד עשיית שוק והשקה.',
 'rocket', 4),

('part-5', 5, 'גיוס הון', 'Capital Raising',
 'שלטו בניהול אוצר, אסטרטגיות גיוס הון, יחסי משקיעים, וביצוע גיוסי כספים ל-DAOs.',
 'trending-up', 5),

('part-6', 6, 'ייעוץ אסטרטגי', 'Strategic Advisory',
 'פתחו יכולות ייעוץ — ניתוח תחרותי, מיצוב שוק, אסטרטגיית צמיחה, ומתן ייעוץ אסטרטגי ל-DAOs.',
 'compass', 6);


-- ============================================================
-- CHAPTERS (20 Chapters)
-- ============================================================

-- Part I — Foundations
INSERT INTO chapters (id, part_id, number, title_he, title_en, description_he, book_url, points_value, sort_order, requires_role) VALUES
('chapter-1', 'part-1', 1, 'עליית בנקאות ההשקעות ל-DAOs', 'The Rise of DAO Investment Banking',
 'ה-DAO כישות כלכלית, תפקיד בנקאות ההשקעות, סטנדרטים מקצועיים, הזדמנות שוק ומסלול קריירה. כולל מקרה בוחן MakerDAO.',
 'part-1-foundations/chapter-1-emergence/', 10, 1, 'member'),

('chapter-2', 'part-1', 2, 'מסגרות ניתוח פיננסי', 'Financial Analysis Frameworks',
 'דוחות כספיים של DAOs, מדדי ביצוע מרכזיים, מקורות מידע וכלי ניתוח. מקרי בוחן: Lido, Arbitrum, Uniswap.',
 'part-1-foundations/chapter-2-financial-analysis/', 10, 2, 'member'),

-- Part II — Valuation
('chapter-3', 'part-2', 3, 'יסודות הערכת שווי פרוטוקולים', 'Protocol Valuation Foundations',
 'אתגר הערכת השווי ועלות הון ב-DeFi.',
 'part-2-valuation/chapter-3-foundations/', 10, 3, 'member'),

('chapter-4', 'part-2', 4, 'ניתוח DCF לפרוטוקולים', 'Protocol DCF Analysis',
 'מסגרת ה-DCF לפרוטוקולים, מקרה בוחן Aave, מכניקות טוקן מורכבות.',
 'part-2-valuation/chapter-4-dcf/', 10, 4, 'member'),

('chapter-5', 'part-2', 5, 'הערכת שווי יחסית', 'Relative Valuation',
 'מסגרת חברות מקבילות, מקרה בוחן DEX, עסקאות תקדימיות.',
 'part-2-valuation/chapter-5-relative-valuation/', 10, 5, 'member'),

('chapter-6', 'part-2', 6, 'מסגרות הערכת שווי מתקדמות', 'Advanced Valuation',
 'מודלים לערך רשת, אופציות ריאליות, הערכת שווי לפי סכום חלקים, טריאנגולציה, מלכודות נפוצות.',
 'part-2-valuation/chapter-6-advanced/', 10, 6, 'member'),

-- Part III — M&A
('chapter-7', 'part-3', 7, 'נוף ה-M&A של DAOs', 'DAO M&A Landscape',
 'מדוע DAOs מתמזגים ורוכשים, תהליך ה-M&A ל-DAOs.',
 'part-3-mergers-acquisitions/chapter-7-landscape/', 10, 7, 'member'),

('chapter-8', 'part-3', 8, 'בדיקת נאותות לרכישת DAOs', 'DAO Acquisition Due Diligence',
 'בדיקת נאותות טכנית, טוקנומית, פיננסית, ממשלית, משפטית, שוקית ואון-צ׳יין.',
 'part-3-mergers-acquisitions/chapter-8-due-diligence/', 10, 8, 'member'),

('chapter-9', 'part-3', 9, 'מבנה עסקאות', 'Deal Structuring',
 'החלפת טוקנים, שילוב ממשל, הגנת עסקה, חוות דעת הוגנות.',
 'part-3-mergers-acquisitions/chapter-9-structuring/', 10, 9, 'member'),

('chapter-10', 'part-3', 10, 'שילוב לאחר מיזוג', 'Post-Merger Integration',
 'תוכנית 100 הימים, שילוב טכני וקהילתי, ניתוח Fei/Rari.',
 'part-3-mergers-acquisitions/chapter-10-integration/', 10, 10, 'member'),

-- Part IV — Token Generation Events
('chapter-11', 'part-4', 11, 'ה-TGE כהנפקה מבוזרת', 'TGE as Decentralized Issuance',
 'הבנת ה-TGE והערכת מוכנות.',
 'part-4-token-generation/chapter-11-tge-overview/', 10, 11, 'member'),

('chapter-12', 'part-4', 12, 'עיצוב טוקנומיקס', 'Tokenomics Design',
 'היצע והקצאת טוקנים, צבירת ערך, עיצוב ממשל, מידול וסימולציה.',
 'part-4-token-generation/chapter-12-tokenomics/', 10, 12, 'member'),

('chapter-13', 'part-4', 13, 'אסטרטגיית הפצה וביצוע', 'Distribution Strategy',
 'תכנון אירדרופ, כריית נזילות, מכירות פרטיות.',
 'part-4-token-generation/chapter-13-distribution/', 10, 13, 'member'),

('chapter-14', 'part-4', 14, 'עשיית שוק, רישום למסחר והשקה', 'Market Making & Launch',
 'עשיית שוק ב-DEX, רישום בבורסות, שיקולים רגולטוריים.',
 'part-4-token-generation/chapter-14-launch/', 10, 14, 'member'),

-- Part V — Capital Raising
('chapter-15', 'part-5', 15, 'ניהול אוצר', 'Treasury Management',
 'האוצר כנכס אסטרטגי, הקצאת נכסים, ניהול סיכונים, ממשל ופיקוח. מקרה בוחן: Lido OTC.',
 'part-5-capital-raising/chapter-15-treasury-management/', 10, 15, 'member'),

('chapter-16', 'part-5', 16, 'אסטרטגיות גיוס הון', 'Capital Raising Strategies',
 'צרכי הון ומכשירים, מבנה גיוסים, יחסי משקיעים, עיצוב טבלת הון.',
 'part-5-capital-raising/chapter-16-capital-raising/', 10, 16, 'member'),

('chapter-17', 'part-5', 17, 'ביצוע גיוס כספים', 'Fundraising Execution',
 'תהליך גיוס ההון וייעוץ שוקי הון.',
 'part-5-capital-raising/chapter-17-fundraising-execution/', 10, 17, 'member'),

-- Part VI — Strategic Advisory
('chapter-18', 'part-6', 18, 'ניתוח תחרותי לפרוטוקולים', 'Protocol Competitive Analysis',
 'המנדט של הייעוץ האסטרטגי, חמשת הכוחות של פורטר ב-DeFi, מפת נוף תחרותי. מקרה בוחן: סקטור ההלוואות.',
 'part-6-strategic-advisory/chapter-18-competitive-analysis/', 10, 18, 'member'),

('chapter-19', 'part-6', 19, 'מיצוב שוק ואסטרטגיית צמיחה', 'Market Positioning & Growth',
 'מסגרות מיצוב, אסטרטגיית צמיחה, פיתוח עסקי ושותפויות.',
 'part-6-strategic-advisory/chapter-19-market-positioning/', 10, 19, 'member'),

('chapter-20', 'part-6', 20, 'כניסה לשוק ומתן ייעוץ', 'GTM & Advisory Delivery',
 'אסטרטגיית כניסה לשוק ומתן ייעוץ אסטרטגי.',
 'part-6-strategic-advisory/chapter-20-gtm-advisory/', 10, 20, 'member');
