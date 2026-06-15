# HOMEPAGE V1 IMPLEMENTATION DOCUMENT

## IMPORTANT

Before implementation, read and fully understand:

`MASTER_SPECIFICATION.md`

This document contains the project's source of truth.

This homepage implementation document expands on the homepage requirements and must be followed together with the master specification.

---

## OBJECTIVE

Build a premium, trust-building homepage for Garage Hofwil AG.

The homepage should immediately communicate:

- Trust
- Professionalism
- Experience
- Transparency
- Personal service

The homepage is NOT intended to primarily sell vehicles.

The homepage is intended to generate workshop enquiries and appointment requests.

Visitors should leave with the feeling:

> "I trust these people with my car."

---

## GENERAL IMPLEMENTATION RULES

Use:

- HTML
- CSS
- JavaScript

No frameworks.

Use semantic HTML.

Prioritize:

- Fast loading
- Accessibility
- Responsive design
- Clean code

Avoid unnecessary complexity.

---

## ASSET STRUCTURE

All image paths should be configurable.

Use variables or placeholders where necessary.

Expected assets:

- `LOGO_PATH`
- `HERO_IMAGE_PATH`
- `TEAM_MEMBER_01`
- `TEAM_MEMBER_02`
- `TEAM_MEMBER_03`
- `TEAM_MEMBER_04`
- `ICON_BRAKES`
- `ICON_SUSPENSION`
- `ICON_TURBINE`
- `ICON_BELT`
- `ICON_CHECK`
- `ICON_ELECTRONICS`

Do not use stock images.

Do not generate placeholder illustrations.

Use only project assets.

---

## SECTION 1 — NAVIGATION

Position:

Top of page.
Sticky.
Visible while scrolling.

### Desktop Layout

Left:
- Garage Hofwil logo

Center:
- Startseite
- Leistungen
- Kauf & Verkauf
- Über Uns
- Kontakt

Right:
- Primary CTA Button: "Termin buchen"

### Desktop Behaviour

Navigation remains transparent over hero.

After scrolling:
- background becomes slightly opaque
- navigation shrinks slightly
- smooth transition

### Mobile Navigation

Display:
- Logo
- Hamburger Menu

When opened — vertical menu containing:
- Startseite
- Leistungen
- Kauf & Verkauf
- Über Uns
- Kontakt
- Termin buchen

---

## SECTION 2 — HERO

Height: 100vh minimum.

### Background

Use `HERO_IMAGE_PATH`.

Background should fill entire hero.

Image remains clearly visible.

Do not darken excessively.

### Overlay

Apply subtle diagonal overlay.

Blend:
- Soft White
- Soft Red

Very low opacity. The image must remain visible.

### Hero Layout

- Logo positioned slightly above center
- Headline centered
- Subheadline centered
- Offer text centered
- CTA centered

### Headline

Generate a trust-based headline.

Direction:

> "Der Mechaniker Ihres Vertrauens"

or similar.

The headline should be:
- Short
- Memorable
- Trust focused

### Subheadline

Communicate:
- 25+ years experience
- All manufacturers
- Transparent service
- Personal support

### Offer Text

Generate a short line encouraging visitors to request a free diagnosis.

### CTA

Primary: **"Gratis Diagnose buchen"**

Secondary (optional): Text link — "Mehr erfahren"

---

## SECTION 3 — SERVICE BANNER

This section should appear immediately after the hero.

The banner should not dominate the page.

Purpose: Reinforce expertise.

### Animation

Infinite horizontal scroll.
Smooth.
Professional.
No sudden movements.

### Service Terms

- Service
- Diagnose
- Bremsen
- Elektronik
- Aufhängung
- Turbine
- Reifen
- MFK
- Wartung
- Fahrzeugcheck

Repeat continuously.

---

## SECTION 4 — WERTE / QUALITÄTSSICHERUNG

Purpose: Build trust.

### Layout

3–6 cards.

Desktop: Grid.
Mobile: Stacked.

### Topics

- Transparenz
- Erfahrung
- Qualität
- Persönlicher Service
- Zuverlässigkeit
- Fairness

### Card Design

- Soft background
- Subtle shadow
- Hover effect
- No aggressive styling

### Hover

Scale: 1 → 1.03
TranslateY: 0 → -5px

---

## SECTION 5 — TERMINABLAUF

Purpose: Remove uncertainty. Show customers exactly how the process works.

**Step 1:** Diagnose & Fahrzeugprüfung

**Step 2:** Transparente Offerte & Beratung

**Step 3:** Reparatur nach Herstellervorgaben

### Layout

Desktop: Horizontal.
Mobile: Vertical.

---

## SECTION 6 — LEISTUNGEN

Split layout.

### Left Side

- Headline
- Description
- CTA Button: "Alle Leistungen ansehen"

Description should explain:
- Repairs
- Diagnostics
- Maintenance
- Manufacturer specifications
- All vehicle brands

### Right Side

Animated circular service wheel.

This is a signature visual element.

### Service Wheel

Use provided service icons.

Icons:
- Bremsen
- Aufhängung
- Turbine
- Riemen
- Check
- Elektronik

### Behaviour

- Slow clockwise rotation
- Continuous
- Very smooth
- Professional
- Not distracting

### Hover

- Icon slightly enlarges
- Red accent increases

---

## SECTION 7 — TEAM

Purpose: Show the people behind the business.

### Layout

3–4 employee cards.

Each card:
- Photo
- Name
- Position

CTA: "Mehr über uns"

### Hover

- Image slightly zooms
- Card lifts subtly

---

## SECTION 8 — KONTAKT

Two-column layout.

### Left

Google Maps Embed

> Garage Hofwil AG
> Bernstrasse 50
> 3053 Münchenbuchsee

### Right

Headline: **"Bereit für Ihren nächsten Termin?"**

CTA: **"Gratis Diagnose buchen"**

Secondary Headline: "Noch nicht überzeugt?"

Text: Encourage visitors to contact the garage with any questions.

### Contact Form

Fields:
- Name
- Telefon
- E-Mail
- Nachricht

Submit Button: **"Anfrage senden"**

---

## SECTION 9 — FOOTER

Inspired by premium Swiss service companies.

Left:
- Logo
- Short company summary

Center:
- Navigation links

Right:
- Phone
- Email
- Address
- Opening Hours

Bottom Row:
- Instagram
- LinkedIn
- Copyright

---

## ANIMATION RULES

Background images:
- Never animate
- Remain stable

Content:
- Fade upward into view

Animation:
- Opacity: 0 → 1
- TranslateY: 30px → 0
- Duration: 700ms

Cards should appear progressively as users scroll.

---

## BUTTON DESIGN

Buttons should use the primary brand red.

Hover behaviour:
- Slight lift
- Stronger shadow
- Soft red glow beneath button

The glow should resemble subtle automotive underglow lighting.

---

## RESPONSIVE REQUIREMENTS

Every section must work perfectly on:
- Desktop
- Tablet
- Mobile

Rule — whenever a section contains Text + Visual:

Desktop: Side by side
Mobile: Text first, Visual second. Always.

---

## FINAL REQUIREMENT

When making implementation decisions ask:

> "Does this increase trust in Garage Hofwil AG?"

If the answer is no, choose a simpler and more trustworthy solution.
