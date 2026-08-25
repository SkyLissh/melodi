# Melodi 🎵

A cross-platform, feature-first music player built with **Flutter**. Think of it as a modern take on the classic desktop + mobile music experience — plugin-based, themeable, and localized.

> **Stack:** Flutter · Dart · Riverpod (hooks) · Freezed · auto_route · forui · dio · intl

## Why this project

I wanted to build a music player that feels like a first-class desktop *and* mobile app — not a mobile UI stretched to a laptop window. That meant a real window shell (`window_manager`, custom titlebar, drag regions), a coherent design system (`forui` + a custom palette), and a feature-first structure that scales as the app grows.

## Highlights

- **Feature-first architecture** — each feature (`browse`, `library`, `search`, `window`) is a self-contained module with its own models, providers, and `components`.
- **Plugin-ready** — the app is built around an ingestible content model (albums, artists, carousels) rather than a hard-coded single source.
- **State management** — `hooks_riverpod` + `riverpod_annotation` with generator-backed, type-safe providers. `flutter_hooks` for ergonomic lifecycle logic.
- **Immutable models** — `freezed` + `json_annotation` for declarative, sealed-style domain types.
- **Typed navigation** — `auto_route` for compile-time-safe, generated routes.
- **Localized (ES/EN)** — full `flutter_localizations` + `intl` setup, separate locale files.
- **Cross-platform** — Android / iOS / Linux / macOS, with a desktop-aware window layer (`window_manager`) that provides native window dragging and buttons.
- **Design system** — a custom `theme/` (palette, spacing, typography styles, reusable `styles` for buttons/items) on top of `forui` + `google_fonts`.

## Architecture

```
lib/
├── features/          # feature-first modules (browse, search, library, window)
│   ├── models/        #   Freezed domain models
│   ├── providers/     #   Riverpod providers
│   └── components/    #   Feature-specific widgets
├── shared/            # cross-feature components (cards, hooks)
├── theme/             # palette, spacing, typography, component styles
├── router/            # auto_route generated + handwritten routes
├── l10n/              # app_localizations (en, es)
└── screens/           # top-level screens
```

## Getting started

```bash
flutter pub get
flutter run          # iOS / Android / desktop
```

Requires Flutter (Dart SDK `^3.11.4`). The UI is fully data-driven — point it at any music service and the same components render the content.

## What it demonstrates

- Modern Flutter architecture (feature-first, generator-backed, typed states)
- Desktop + mobile desktop-grade windowing
- A real design system and theming
- Internationalization done properly
