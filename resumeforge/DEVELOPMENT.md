# ResumeForge AI - Development Guide

## 📋 Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture](#architecture)
3. [Development Setup](#development-setup)
4. [Phase-by-Phase Implementation](#implementation)
5. [Code Standards](#code-standards)
6. [Testing Strategy](#testing)
7. [Deployment](#deployment)

---

## 🎯 Project Overview

### Vision
Build a comprehensive resume management platform that combines document editing, AI assistance, and professional export capabilities.

### Core Value Propositions
1. **Multi-Resume Management** - Store and organize unlimited resume versions
2. **AI-Powered Optimization** - Intelligent suggestions and tailoring
3. **Professional Export** - High-quality PDF/DOCX output
4. **Job-Specific Tailoring** - Paste job descriptions and auto-optimize

---

## 🏗️ Architecture

### Clean Architecture Layers

```
┌─────────────────────────────────────┐
│     Presentation Layer (UI)          │
│  - Pages, Widgets, Providers         │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│     Domain Layer (Business Logic)    │
│  - Use Cases, Entities               │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│     Data Layer (Repositories)        │
│  - Repositories, Data Sources        │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│     External Services                │
│  - Firebase, AI APIs, Storage        │
└─────────────────────────────────────┘
```

### State Management: Riverpod

```dart
// Example provider structure
@riverpod
class ResumeList extends _$ResumeList {
  @override
  Future<List<ResumeModel>> build() async {
    return _resumeRepository.getAllResumes();
  }
  
  Future<void> createResume(ResumeModel resume) async {
    await _resumeRepository.createResume(resume);
    ref.invalidateSelf();
  }
}
```

### Folder Structure

```
lib/
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── api_constants.dart
│   │   └── route_constants.dart
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── resume_model.dart
│   │   ├── resume_version_model.dart
│   │   └── resume_content_model.dart
│   ├── theme/
│   │   └── app_theme.dart
│   ├── utils/
│   │   ├── validators.dart
│   │   ├── formatters.dart
│   │   └── extensions.dart
│   └── errors/
│       ├── failures.dart
│       └── exceptions.dart
│
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── repositories/
│   │   │   │   └── auth_repository_impl.dart
│   │   │   └── sources/
│   │   │       └── firebase_auth_source.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   │   └── auth_repository.dart
│   │   │   └── usecases/
│   │   │       ├── sign_in_usecase.dart
│   │   │       ├── sign_up_usecase.dart
│   │   │       └── sign_out_usecase.dart
│   │   └── presentation/
│   │       ├── pages/
│   │       │   ├── login_page.dart
│   │       │   └── signup_page.dart
│   │       ├── widgets/
│   │       │   └── auth_form.dart
│   │       └── providers/
│   │           └── auth_provider.dart
│   │
│   ├── dashboard/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── dashboard_page.dart
│   │       ├── widgets/
│   │       │   ├── resume_card.dart
│   │       │   ├── resume_grid.dart
│   │       │   └── search_bar.dart
│   │       └── providers/
│   │           └── resume_list_provider.dart
│   │
│   ├── editor/
│   │   ├── data/
│   │   │   ├── repositories/
│   │   │   │   └── resume_repository_impl.dart
│   │   │   └── sources/
│   │   │       ├── firestore_source.dart
│   │   │       └── local_storage_source.dart
│   │   ├── domain/
│   │   │   ├── usecases/
│   │   │   │   ├── save_resume_usecase.dart
│   │   │   │   ├── update_section_usecase.dart
│   │   │   │   └── create_version_usecase.dart
│   │   │   └── repositories/
│   │   │       └── resume_repository.dart
│   │   └── presentation/
│   │       ├── pages/
│   │       │   └── editor_page.dart
│   │       ├── widgets/
│   │       │   ├── section_navigator.dart
│   │       │   ├── editor_panel.dart
│   │       │   ├── preview_panel.dart
│   │       │   ├── header_section_form.dart
│   │       │   ├── experience_section_form.dart
│   │       │   └── ... (other section forms)
│   │       └── providers/
│   │           ├── resume_editor_provider.dart
│   │           └── autosave_provider.dart
│   │
│   ├── ai_assistant/
│   │   ├── data/
│   │   │   ├── repositories/
│   │   │   │   └── ai_repository_impl.dart
│   │   │   └── sources/
│   │   │       └── gemini_ai_source.dart
│   │   ├── domain/
│   │   │   ├── usecases/
│   │   │   │   ├── improve_summary_usecase.dart
│   │   │   │   ├── rewrite_bullet_usecase.dart
│   │   │   │   ├── analyze_job_desc_usecase.dart
│   │   │   │   └── tailor_resume_usecase.dart
│   │   │   └── repositories/
│   │   │       └── ai_repository.dart
│   │   └── presentation/
│   │       ├── widgets/
│   │       │   ├── ai_chat_panel.dart
│   │       │   ├── ai_message_bubble.dart
│   │       │   ├── suggestion_card.dart
│   │       │   └── job_paste_dialog.dart
│   │       └── providers/
│   │           └── ai_chat_provider.dart
│   │
│   ├── preview/
│   │   ├── domain/
│   │   │   └── services/
│   │   │       └── template_service.dart
│   │   └── presentation/
│   │       ├── widgets/
│   │       │   ├── resume_preview.dart
│   │       │   ├── template_renderer.dart
│   │       │   └── page_view.dart
│   │       └── providers/
│   │           └── preview_provider.dart
│   │
│   └── export/
│       ├── data/
│       │   └── services/
│       │       ├── pdf_generator.dart
│       │       └── docx_generator.dart
│       ├── domain/
│       │   └── usecases/
│       │       ├── export_pdf_usecase.dart
│       │       └── export_docx_usecase.dart
│       └── presentation/
│           └── widgets/
│               └── export_dialog.dart
│
└── main.dart
```

---

## 🚀 Phase-by-Phase Implementation

### Phase 1: Foundation ✅ COMPLETE

**Goal**: Setup project structure, models, and basic UI

**Deliverables**:
- [x] Flutter project setup
- [x] Dependencies configuration
- [x] Data models with Freezed
- [x] Theme system
- [x] Routing setup
- [x] Login page
- [x] Dashboard page
- [x] Editor page layout

---

### Phase 2: Core Features (NEXT)

**Goal**: Implement resume CRUD and persistence

#### Step 1: Firebase Setup
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase in project
flutterfire configure
```

#### Step 2: Repository Implementation
```dart
// lib/features/editor/data/repositories/resume_repository_impl.dart
class ResumeRepositoryImpl implements ResumeRepository {
  final FirestoreSource _firestoreSource;
  final LocalStorageSource _localSource;

  @override
  Future<ResumeModel> createResume(ResumeModel resume) async {
    try {
      // Save to Firestore
      await _firestoreSource.createResume(resume);
      // Cache locally
      await _localSource.cacheResume(resume);
      return resume;
    } catch (e) {
      throw ResumeException('Failed to create resume');
    }
  }

  @override
  Future<List<ResumeModel>> getAllResumes(String userId) async {
    try {
      // Try local first
      final localResumes = await _localSource.getResumes(userId);
      if (localResumes.isNotEmpty) return localResumes;
      
      // Fallback to Firestore
      return await _firestoreSource.getResumes(userId);
    } catch (e) {
      throw ResumeException('Failed to fetch resumes');
    }
  }
}
```

#### Step 3: Providers
```dart
// lib/features/editor/presentation/providers/resume_editor_provider.dart
@riverpod
class ResumeEditor extends _$ResumeEditor {
  Timer? _autosaveTimer;

  @override
  Future<ResumeModel?> build(String resumeId) async {
    final repository = ref.watch(resumeRepositoryProvider);
    
    if (resumeId == 'new') {
      return _createNewResume();
    }
    
    return await repository.getResume(resumeId);
  }

  void updateSection(String sectionType, Map<String, dynamic> data) {
    state = state.whenData((resume) {
      if (resume == null) return null;
      
      final updatedContent = _updateContent(resume.content, sectionType, data);
      final updatedResume = resume.copyWith(
        content: updatedContent,
        updatedAt: DateTime.now(),
      );
      
      _scheduleAutosave(updatedResume);
      return updatedResume;
    });
  }

  void _scheduleAutosave(ResumeModel resume) {
    _autosaveTimer?.cancel();
    _autosaveTimer = Timer(AppConstants.autosaveDelay, () {
      _saveResume(resume);
    });
  }

  Future<void> _saveResume(ResumeModel resume) async {
    final repository = ref.read(resumeRepositoryProvider);
    await repository.updateResume(resume);
  }
}
```

#### Step 4: Form Widgets
```dart
// lib/features/editor/presentation/widgets/header_section_form.dart
class HeaderSectionForm extends ConsumerWidget {
  const HeaderSectionForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resume = ref.watch(resumeEditorProvider);
    
    return resume.when(
      data: (data) {
        if (data == null) return const SizedBox();
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              initialValue: data.content.header.fullName,
              decoration: const InputDecoration(labelText: 'Full Name'),
              onChanged: (value) {
                ref.read(resumeEditorProvider.notifier).updateSection(
                  'header',
                  {'fullName': value},
                );
              },
            ),
            // More fields...
          ],
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
```

---

### Phase 3: Preview & Templates

#### Step 1: Template System
```dart
// lib/features/preview/domain/services/template_service.dart
abstract class ResumeTemplate {
  Widget render(ResumeContentModel content);
}

class ModernTemplate implements ResumeTemplate {
  @override
  Widget render(ResumeContentModel content) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(content.header),
          const SizedBox(height: 24),
          if (content.summary != null) _buildSummary(content.summary!),
          const SizedBox(height: 24),
          _buildExperience(content.experience),
          // More sections...
        ],
      ),
    );
  }
}
```

#### Step 2: Preview Panel
```dart
// lib/features/preview/presentation/widgets/resume_preview.dart
class ResumePreview extends ConsumerWidget {
  const ResumePreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resume = ref.watch(resumeEditorProvider);
    final template = ref.watch(templateProvider);
    
    return resume.when(
      data: (data) {
        if (data == null) return const EmptyPreview();
        
        return InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.5,
          maxScale: 2.0,
          child: Container(
            width: 8.5 * 96, // 8.5 inches in pixels
            height: 11 * 96,  // 11 inches in pixels
            color: Colors.white,
            child: template.render(data.content),
          ),
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text('Error: $e'),
    );
  }
}
```

---

### Phase 4: AI Integration

#### Step 1: Gemini Setup
```dart
// lib/features/ai_assistant/data/sources/gemini_ai_source.dart
class GeminiAISource {
  final GenerativeModel _model;

  GeminiAISource()
      : _model = GenerativeModel(
          model: 'gemini-pro',
          apiKey: 'YOUR_API_KEY',
        );

  Future<String> improveSummary(String currentSummary, String targetRole) async {
    final prompt = '''
You are a professional resume writer. Improve this professional summary for a $targetRole position.

Current summary:
$currentSummary

Make it:
- Concise (2-3 sentences)
- Impactful with strong action verbs
- Tailored to the role
- ATS-friendly

Return ONLY the improved summary, no explanations.
''';

    final response = await _model.generateContent([Content.text(prompt)]);
    return response.text ?? currentSummary;
  }

  Future<List<String>> improveBulletPoints(
    List<String> bullets,
    String jobDescription,
  ) async {
    final prompt = '''
Improve these resume bullet points to better match this job description.

Job Description:
$jobDescription

Current Bullet Points:
${bullets.map((b) => '• $b').join('\n')}

Make them:
- Start with strong action verbs
- Include measurable results where possible
- Highlight relevant skills from the job description
- Be concise and impactful

Return ONLY the improved bullet points, one per line, starting with •
''';

    final response = await _model.generateContent([Content.text(prompt)]);
    final text = response.text ?? '';
    return text.split('\n')
        .where((line) => line.trim().startsWith('•'))
        .map((line) => line.trim().substring(1).trim())
        .toList();
  }

  Future<Map<String, dynamic>> analyzeJobDescription(String jobDesc) async {
    final prompt = '''
Analyze this job description and extract key information in JSON format.

Job Description:
$jobDesc

Return a JSON object with:
{
  "requiredSkills": ["skill1", "skill2", ...],
  "preferredSkills": ["skill3", "skill4", ...],
  "responsibilities": ["resp1", "resp2", ...],
  "keywords": ["keyword1", "keyword2", ...],
  "experienceLevel": "entry/mid/senior",
  "industry": "industry name"
}
''';

    final response = await _model.generateContent([Content.text(prompt)]);
    final text = response.text ?? '{}';
    return jsonDecode(text);
  }
}
```

#### Step 2: AI Chat Interface
```dart
// lib/features/ai_assistant/presentation/widgets/ai_chat_panel.dart
class AIChatPanel extends ConsumerStatefulWidget {
  const AIChatPanel({super.key});

  @override
  ConsumerState<AIChatPanel> createState() => _AIChatPanelState();
}

class _AIChatPanelState extends ConsumerState<AIChatPanel> {
  final _messageController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(aiChatProvider);
    
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              return AIMessageBubble(message: message);
            },
          ),
        ),
        _buildInputArea(),
      ],
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Ask AI to improve your resume...',
              ),
              maxLines: null,
              onSubmitted: _sendMessage,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => _sendMessage(_messageController.text),
          ),
        ],
      ),
    );
  }

  Future<void> _sendMessage(String text) async {
    if (text.trim().isEmpty) return;
    
    _messageController.clear();
    
    await ref.read(aiChatProvider.notifier).sendMessage(text);
    
    // Scroll to bottom
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}
```

---

### Phase 5: Export

#### PDF Export
```dart
// lib/features/export/data/services/pdf_generator.dart
class PDFGenerator {
  Future<Uint8List> generatePDF(ResumeContentModel content) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.letter,
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _buildPDFHeader(content.header),
            pw.SizedBox(height: 16),
            if (content.summary != null) _buildPDFSummary(content.summary!),
            pw.SizedBox(height: 16),
            _buildPDFExperience(content.experience),
            // More sections...
          ],
        ),
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildPDFHeader(HeaderSection header) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Text(
          header.fullName,
          style: pw.TextStyle(
            fontSize: 24,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        pw.Text(
          [
            if (header.email != null) header.email!,
            if (header.phone != null) header.phone!,
            if (header.location != null) header.location!,
          ].join(' | '),
          style: const pw.TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
```

---

## 💻 Code Standards

### Naming Conventions
```dart
// Classes: PascalCase
class ResumeEditor {}

// Variables/Functions: camelCase
String userName;
void saveResume() {}

// Constants: UPPER_SNAKE_CASE
const String API_KEY = 'key';

// Private members: _prefixed
String _privateField;
void _privateMethod() {}

// Files: snake_case
// resume_editor_provider.dart
```

### Code Organization
```dart
// 1. Imports (grouped and sorted)
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/resume.dart';
import '../widgets/resume_card.dart';

// 2. Part statements
part 'file.g.dart';
part 'file.freezed.dart';

// 3. Constants
const String _defaultTitle = 'Untitled Resume';

// 4. Main class
class ResumeListPage extends ConsumerWidget {
  // 4a. Constructors
  const ResumeListPage({super.key});
  
  // 4b. Fields
  final String title = 'Resumes';
  
  // 4c. Methods
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Implementation
  }
  
  // 4d. Private methods
  void _handleCreate() {
    // Implementation
  }
}
```

### Error Handling
```dart
// Use Either for business logic results
typedef Result<T> = Either<Failure, T>;

// Repository
Future<Result<Resume>> getResume(String id) async {
  try {
    final resume = await _source.getResume(id);
    return Right(resume);
  } catch (e) {
    return Left(ServerFailure(message: e.toString()));
  }
}

// UI Layer
final result = await ref.read(resumeRepositoryProvider).getResume(id);
result.fold(
  (failure) => _showError(failure.message),
  (resume) => _displayResume(resume),
);
```

---

## 🧪 Testing Strategy

### Unit Tests
```dart
// test/features/editor/domain/usecases/save_resume_usecase_test.dart
void main() {
  late SaveResumeUseCase usecase;
  late MockResumeRepository mockRepository;

  setUp(() {
    mockRepository = MockResumeRepository();
    usecase = SaveResumeUseCase(mockRepository);
  });

  group('SaveResumeUseCase', () {
    test('should save resume successfully', () async {
      // Arrange
      final resume = ResumeModel(/* ... */);
      when(mockRepository.saveResume(resume))
          .thenAnswer((_) async => Right(resume));

      // Act
      final result = await usecase(resume);

      // Assert
      expect(result, Right(resume));
      verify(mockRepository.saveResume(resume));
    });
  });
}
```

### Widget Tests
```dart
// test/features/dashboard/presentation/widgets/resume_card_test.dart
void main() {
  testWidgets('ResumeCard displays resume title', (tester) async {
    final resume = ResumeModel(
      id: '1',
      title: 'Software Engineer Resume',
      /* ... */
    );

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: ResumeCard(resume: resume),
          ),
        ),
      ),
    );

    expect(find.text('Software Engineer Resume'), findsOneWidget);
  });
}
```

---

## 🚀 Deployment

### Build for Web
```bash
# Production build
flutter build web --release --web-renderer canvaskit

# Build output in: build/web/
```

### Environment Variables
```dart
// lib/core/config/env_config.dart
class EnvConfig {
  static const String geminiApiKey = String.fromEnvironment('GEMINI_API_KEY');
  static const String firebaseApiKey = String.fromEnvironment('FIREBASE_API_KEY');
}
```

### Firebase Hosting
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Initialize hosting
firebase init hosting

# Deploy
firebase deploy --only hosting
```

---

## 📚 Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Riverpod Documentation](https://riverpod.dev)
- [Firebase for Flutter](https://firebase.flutter.dev)
- [Gemini API](https://ai.google.dev)
- [PDF Package](https://pub.dev/packages/pdf)

---

**Last Updated**: Phase 1 Complete - May 2, 2026
