# to_do_frontend

Ocean Professional To-Do App (Flutter)

Features:
- Main task list with modern, minimalist design
- Add task via floating action button and dialog
- Edit tasks by tapping a card
- Mark complete with checkbox
- Swipe to delete (dismissible)
- Smooth transitions, subtle shadows, rounded corners
- Ocean Professional theme (blue #2563EB and amber #F59E0B accents)
- Provider-based architecture and repository abstraction, ready for backend/db integration

Run:
- flutter pub get
- flutter run

Structure:
- lib/main.dart: Entry point with theme, state (Provider), repository, and UI screens.
- TaskRepository abstraction: swap InMemoryTaskRepository with a future backend (e.g., Supabase/REST/SQLite).

Testing:
- test/widget_test.dart contains basic UI tests for empty state and add flow.

Notes:
- No configuration is required yet; future env variables for backend endpoints can be added to .env and loaded with flutter_dotenv when integration is implemented.
