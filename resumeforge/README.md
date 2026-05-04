# ResumeForge AI 🚀

**AI-Powered Resume Management & Optimization Platform**

ResumeForge AI is a comprehensive Flutter Web application that helps users create, manage, edit, optimize, and download multiple resumes tailored to specific company and job requirements.

## 🎯 Product Vision

A smart resume management platform combining:
- Resume storage and versioning
- Real-time document preview
- Manual content editing
- AI-assisted resume optimization
- Job requirement analysis
- Multi-format export (PDF/DOCX)

---

## ✨ Key Features

### 📋 Resume Management
- Create and manage multiple resume versions
- Duplicate, rename, tag, and organize resumes
- Version history with restore capability
- Search and filter by role, company, status
- Dashboard with quick actions

### ✍️ Advanced Editor
- **3-Panel Layout**: Section navigation | Content editor | Live preview
- **Structured Sections**:
  - Header/Contact Information
  - Professional Summary
  - Work Experience
  - Education
  - Skills (Technical & Soft)
  - Projects
  - Certifications
  - Achievements/Awards
- Section reordering and customization
- Autosave functionality
- Undo/redo support

### 🎨 Live Preview
- Real-time resume rendering
- Professional page layout
- Multi-page support
- Zoom controls
- Template-based styling

### 🤖 AI Assistant
- **Conversational Editing**: Chat-based resume improvement
- **Smart Suggestions**:
  - Rewrite summaries and bullet points
  - Strengthen action verbs
  - Add measurable achievements
  - Generate ATS-friendly keywords
  - Tailor content to job descriptions
- **Job Requirement Analysis**:
  - Paste job descriptions
  - Extract required skills and keywords
  - Gap analysis and recommendations
  - Match scoring

### 📥 Export & Download
- **PDF Export**: Professional, print-ready format
- **DOCX Export**: Editable Microsoft Word format  
- **TXT Export**: Plain text version
- Customizable file names
- Preserves formatting

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.10.1)
- Dart SDK (>=3.10.1)
- Chrome or any modern web browser
- Firebase project (for backend services)

### Installation

1. **Install dependencies**
   ```bash
   flutter pub get
   ```

2. **Run code generation**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

3. **Run the app**
   ```bash
   flutter run -d chrome
   ```

---

## 📦 Technology Stack

- **Framework**: Flutter Web
- **State Management**: Riverpod
- **Routing**: go_router  
- **AI**: Google Generative AI (Gemini)
- **Backend**: Firebase (Auth, Firestore, Storage)
- **PDF**: pdf, printing packages
- **Code Generation**: Freezed, JSON Serializable

---

## 🗺️ Development Status

### ✅ Phase 1: Foundation (COMPLETED)
- [x] Project setup & dependencies
- [x] Data models & architecture
- [x] Theme & design system
- [x] Routing configuration
- [x] Login page
- [x] Dashboard layout
- [x] Editor layout (3-panel design)

### 🚧 Phase 2: Core Features (NEXT)
- [ ] Firebase integration
- [ ] Resume CRUD operations
- [ ] Form validation & autosave
- [ ] Version management

### 📋 Future Phases
- Preview rendering & templates
- AI integration (Gemini)
- Export functionality (PDF/DOCX)
- Advanced features

---

## 📊 Project Structure

```
lib/
├── core/
│   ├── constants/        # App constants
│   ├── models/          # Data models
│   └── theme/           # Design system
├── features/
│   ├── auth/            # Authentication
│   ├── dashboard/       # Resume list
│   └── editor/          # Resume editor
└── main.dart           # Entry point
```

---

## 🤝 Contributing

This is a work in progress. Contributions welcome!

---

**Built with ❤️ using Flutter**
