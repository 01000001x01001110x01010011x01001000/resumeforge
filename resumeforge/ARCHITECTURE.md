# ResumeForge AI - Technical Architecture

## 🏗️ System Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                        Flutter Web App                       │
│                     (Client Application)                     │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌────────────┐  ┌─────────────┐  ┌──────────────────┐     │
│  │  Auth UI   │  │ Dashboard   │  │  Editor UI       │     │
│  │            │  │             │  │  - Sections      │     │
│  │  Login     │  │  Resume     │  │  - Forms         │     │
│  │  Signup    │  │  List       │  │  - Preview       │     │
│  │            │  │             │  │  - AI Chat       │     │
│  └────────────┘  └─────────────┘  └──────────────────┘     │
│         │               │                    │              │
│         └───────────────┴────────────────────┘              │
│                         │                                   │
│                    Riverpod                                 │
│                 (State Management)                          │
│                         │                                   │
│         ┌───────────────┴────────────────┐                 │
│         │                                 │                 │
│  ┌──────▼──────┐                 ┌───────▼────────┐       │
│  │ Repositories │                 │  Local Storage │       │
│  │             │                  │                │       │
│  │  - Auth     │◄────────────────►│  - Hive       │       │
│  │  - Resume   │                  │  - SharedPrefs│       │
│  │  - AI       │                  └────────────────┘       │
│  └──────┬──────┘                                            │
│         │                                                   │
└─────────┼───────────────────────────────────────────────────┘
          │
          │ HTTP/WebSocket
          │
┌─────────▼───────────────────────────────────────────────────┐
│                    Backend Services                          │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌────────────┐  ┌─────────────┐  ┌──────────────────┐     │
│  │ Firebase   │  │ Firestore   │  │  Storage         │     │
│  │ Auth       │  │ Database    │  │                  │     │
│  │            │  │             │  │  - Resume files  │     │
│  │  - Users   │  │  - Resumes  │  │  - Exports       │     │
│  │  - Sessions│  │  - Versions │  │  - Assets        │     │
│  └────────────┘  └─────────────┘  └──────────────────┘     │
│                                                              │
│  ┌──────────────────────────────────────────────────┐       │
│  │          Google Generative AI (Gemini)           │       │
│  │                                                   │       │
│  │  - Resume improvement                             │       │
│  │  - Job description analysis                       │       │
│  │  - Content generation                             │       │
│  └──────────────────────────────────────────────────┘       │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 🔧 Technology Stack

### Frontend Layer
```yaml
Framework: Flutter Web 3.10+
Language: Dart 3.10+
UI Library: Material Design 3
State Management: Riverpod 2.5+
Routing: go_router 14.2+
```

### Backend Services
```yaml
Authentication: Firebase Auth
Database: Cloud Firestore
Storage: Firebase Storage
AI Engine: Google Generative AI (Gemini)
Hosting: Firebase Hosting
```

### Key Libraries
```yaml
# Core
flutter_riverpod: State management
go_router: Declarative routing
freezed: Immutable data classes
json_serializable: JSON conversion

# Firebase
firebase_core: Firebase SDK
firebase_auth: Authentication
cloud_firestore: NoSQL database
firebase_storage: File storage

# AI & Export
google_generative_ai: Gemini AI
pdf: PDF generation
printing: PDF preview/print
flutter_quill: Rich text editing

# Storage & Utilities
hive: Local database
shared_preferences: Key-value storage
uuid: Unique identifiers
intl: Internationalization
dio: HTTP client
```

---

## 📊 Data Architecture

### Data Flow

```
User Action (UI)
      ↓
Provider (Riverpod)
      ↓
Use Case (Business Logic)
      ↓
Repository (Data Layer)
      ↓
Data Source (Firebase/Local)
      ↓
External Service
      ↓
Response
      ↓
Repository
      ↓
Provider (Update State)
      ↓
UI (Re-render)
```

### State Management Pattern

```dart
// Presentation Layer
class ResumeListPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resumes = ref.watch(resumeListProvider);
    return resumes.when(
      data: (list) => ResumeGrid(resumes: list),
      loading: () => LoadingIndicator(),
      error: (e, s) => ErrorView(error: e),
    );
  }
}

// Provider Layer
@riverpod
class ResumeList extends _$ResumeList {
  @override
  Future<List<ResumeModel>> build() async {
    final repository = ref.read(resumeRepositoryProvider);
    return repository.getAllResumes();
  }
  
  Future<void> createResume(ResumeModel resume) async {
    final repository = ref.read(resumeRepositoryProvider);
    await repository.createResume(resume);
    ref.invalidateSelf(); // Refresh list
  }
}

// Repository Layer
class ResumeRepositoryImpl implements ResumeRepository {
  final FirestoreSource _remote;
  final LocalStorageSource _local;
  
  @override
  Future<List<ResumeModel>> getAllResumes() async {
    // Try local cache first
    try {
      final cached = await _local.getResumes();
      if (cached.isNotEmpty) return cached;
    } catch (_) {}
    
    // Fetch from Firestore
    final resumes = await _remote.getResumes();
    
    // Update cache
    await _local.saveResumes(resumes);
    
    return resumes;
  }
}

// Data Source Layer
class FirestoreSource {
  final FirebaseFirestore _firestore;
  
  Future<List<ResumeModel>> getResumes() async {
    final snapshot = await _firestore
        .collection('resumes')
        .get();
    
    return snapshot.docs
        .map((doc) => ResumeModel.fromJson(doc.data()))
        .toList();
  }
}
```

---

## 🗄️ Database Schema

### Firestore Collections

#### users/
```json
{
  "userId": "string",
  "email": "string",
  "name": "string",
  "photoUrl": "string?",
  "createdAt": "timestamp",
  "updatedAt": "timestamp",
  "resumeIds": ["string"],
  "settings": {
    "theme": "light|dark",
    "defaultTemplate": "string",
    "notifications": "boolean"
  }
}
```

#### resumes/
```json
{
  "resumeId": "string",
  "userId": "string",
  "title": "string",
  "targetRole": "string?",
  "targetCompany": "string?",
  "templateId": "string",
  "currentVersionId": "string",
  "tags": ["string"],
  "status": "draft|tailored|exported|archived",
  "createdAt": "timestamp",
  "updatedAt": "timestamp",
  "versionIds": ["string"]
}
```

#### resume_versions/
```json
{
  "versionId": "string",
  "resumeId": "string",
  "name": "string",
  "content": {
    "header": {
      "fullName": "string",
      "email": "string",
      "phone": "string",
      "location": "string",
      "linkedIn": "string?",
      "github": "string?",
      "portfolio": "string?",
      "website": "string?"
    },
    "summary": "string?",
    "experience": [{
      "id": "string",
      "company": "string",
      "jobTitle": "string",
      "location": "string",
      "startDate": "timestamp",
      "endDate": "timestamp?",
      "isCurrentlyWorking": "boolean",
      "bulletPoints": ["string"],
      "technologies": ["string"],
      "order": "number"
    }],
    "education": [{
      "id": "string",
      "institution": "string",
      "degree": "string",
      "field": "string",
      "startDate": "timestamp",
      "endDate": "timestamp?",
      "gpa": "string?",
      "achievements": ["string"],
      "order": "number"
    }],
    "skills": [{
      "id": "string",
      "category": "string",
      "skills": ["string"],
      "order": "number"
    }],
    "projects": [{
      "id": "string",
      "title": "string",
      "description": "string",
      "technologies": ["string"],
      "achievements": ["string"],
      "link": "string?",
      "date": "timestamp?",
      "order": "number"
    }],
    "certifications": [{
      "id": "string",
      "name": "string",
      "issuer": "string",
      "date": "timestamp?",
      "credentialLink": "string?",
      "order": "number"
    }],
    "achievements": [{
      "id": "string",
      "title": "string",
      "organization": "string?",
      "date": "timestamp?",
      "description": "string?",
      "order": "number"
    }]
  },
  "jobDescriptionText": "string?",
  "aiNotes": "string?",
  "createdAt": "timestamp",
  "updatedAt": "timestamp"
}
```

#### ai_chat_sessions/
```json
{
  "sessionId": "string",
  "resumeId": "string",
  "versionId": "string",
  "messages": [{
    "id": "string",
    "role": "user|assistant",
    "content": "string",
    "timestamp": "timestamp",
    "applied": "boolean?"
  }],
  "createdAt": "timestamp",
  "updatedAt": "timestamp"
}
```

#### export_history/
```json
{
  "exportId": "string",
  "resumeId": "string",
  "versionId": "string",
  "fileType": "pdf|docx|txt",
  "fileUrl": "string",
  "fileName": "string",
  "createdAt": "timestamp"
}
```

### Firestore Indexes

```
Collection: resumes
- userId (Ascending) + updatedAt (Descending)
- userId (Ascending) + status (Ascending)
- userId (Ascending) + tags (Array)

Collection: resume_versions
- resumeId (Ascending) + createdAt (Descending)

Collection: ai_chat_sessions
- resumeId (Ascending) + updatedAt (Descending)
```

---

## 🔐 Security Rules

### Firestore Security Rules

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    
    // Users can only read/write their own data
    match /users/{userId} {
      allow read, write: if request.auth != null 
                         && request.auth.uid == userId;
    }
    
    // Resumes - user can only access their own
    match /resumes/{resumeId} {
      allow read, write: if request.auth != null 
                         && request.auth.uid == resource.data.userId;
      allow create: if request.auth != null 
                    && request.auth.uid == request.resource.data.userId;
    }
    
    // Resume versions - check parent resume ownership
    match /resume_versions/{versionId} {
      allow read, write: if request.auth != null 
                         && get(/databases/$(database)/documents/resumes/$(resource.data.resumeId)).data.userId == request.auth.uid;
    }
    
    // AI chat sessions
    match /ai_chat_sessions/{sessionId} {
      allow read, write: if request.auth != null 
                         && get(/databases/$(database)/documents/resumes/$(resource.data.resumeId)).data.userId == request.auth.uid;
    }
    
    // Export history
    match /export_history/{exportId} {
      allow read: if request.auth != null 
                  && get(/databases/$(database)/documents/resumes/$(resource.data.resumeId)).data.userId == request.auth.uid;
      allow create: if request.auth != null;
    }
  }
}
```

### Storage Security Rules

```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    
    // Exported files - user can only access their own
    match /exports/{userId}/{filename} {
      allow read: if request.auth != null 
                  && request.auth.uid == userId;
      allow write: if request.auth != null 
                   && request.auth.uid == userId;
    }
    
    // User profile photos
    match /profiles/{userId}/{filename} {
      allow read: if request.auth != null;
      allow write: if request.auth != null 
                   && request.auth.uid == userId
                   && request.resource.size < 5 * 1024 * 1024 // 5MB
                   && request.resource.contentType.matches('image/.*');
    }
  }
}
```

---

## 🤖 AI Integration Architecture

### Gemini AI Flow

```
User Request
      ↓
AI Chat Provider
      ↓
AI Repository
      ↓
Construct Prompt
      ↓
Gemini API Call
      ↓
Parse Response
      ↓
Create Suggestion
      ↓
Display to User
      ↓
User Accepts/Rejects
      ↓
Apply Changes (if accepted)
      ↓
Update Resume
      ↓
Save to Firestore
```

### AI Prompt Templates

```dart
class AIPromptTemplates {
  static String improveSummary(String current, String role) {
    return '''
You are a professional resume writer. Improve this professional summary for a $role position.

Current summary:
$current

Requirements:
- 2-3 sentences
- Strong action verbs
- Tailored to the role
- ATS-friendly
- Highlight key achievements

Return ONLY the improved summary.
''';
  }
  
  static String improveBulletPoints(List<String> bullets, String jobDesc) {
    return '''
Improve these resume bullet points to match this job description.

Job Description:
$jobDesc

Current Bullet Points:
${bullets.map((b) => '• $b').join('\n')}

Requirements:
- Start with strong action verbs
- Include measurable results
- Highlight relevant skills
- Be concise and impactful
- Match job description keywords

Return ONLY improved bullet points, one per line, starting with •
''';
  }
  
  static String analyzeJobDescription(String jobDesc) {
    return '''
Analyze this job description and extract key information in JSON format.

Job Description:
$jobDesc

Return JSON with:
{
  "requiredSkills": ["skill1", "skill2"],
  "preferredSkills": ["skill3", "skill4"],
  "responsibilities": ["resp1", "resp2"],
  "keywords": ["keyword1", "keyword2"],
  "experienceLevel": "entry/mid/senior",
  "industry": "industry name"
}
''';
  }
}
```

---

## 📱 Application Layers

### 1. Presentation Layer

**Purpose**: User interface and interaction

**Components**:
- Pages (full screens)
- Widgets (reusable UI components)
- Providers (Riverpod state management)

**Responsibilities**:
- Display data
- Handle user input
- Navigate between screens
- Show loading/error states

### 2. Domain Layer

**Purpose**: Business logic

**Components**:
- Entities (business objects)
- Use Cases (business operations)
- Repository Interfaces (data contracts)

**Responsibilities**:
- Define business rules
- Validate data
- Coordinate operations
- Independent of frameworks

### 3. Data Layer

**Purpose**: Data management

**Components**:
- Repository Implementations
- Data Sources (Remote & Local)
- Data Models (with serialization)

**Responsibilities**:
- Fetch data from sources
- Cache data locally
- Handle network errors
- Transform data formats

---

## 🚀 Performance Optimization

### Caching Strategy

```dart
class ResumeRepositoryImpl {
  final _cacheExpiry = Duration(minutes: 5);
  Map<String, CachedData<ResumeModel>> _cache = {};
  
  Future<ResumeModel> getResume(String id) async {
    // Check cache
    final cached = _cache[id];
    if (cached != null && !cached.isExpired) {
      return cached.data;
    }
    
    // Fetch from remote
    final resume = await _remote.getResume(id);
    
    // Update cache
    _cache[id] = CachedData(
      data: resume,
      expiryTime: DateTime.now().add(_cacheExpiry),
    );
    
    return resume;
  }
}
```

### Lazy Loading

```dart
@riverpod
Future<List<ResumeModel>> resumeList(
  ResumeListRef ref,
  {int page = 1, int pageSize = 20}
) async {
  final repository = ref.read(resumeRepositoryProvider);
  return repository.getResumes(
    offset: (page - 1) * pageSize,
    limit: pageSize,
  );
}
```

### Debouncing

```dart
class AutosaveProvider extends _$AutosaveProvider {
  Timer? _debounceTimer;
  
  void scheduleAutosave(ResumeModel resume) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(
      Duration(seconds: 2),
      () => _saveResume(resume),
    );
  }
}
```

---

## 🧪 Testing Strategy

### Test Pyramid

```
        ┌─────────────┐
        │  E2E Tests  │  (Few)
        │   (10%)     │
        └─────────────┘
       ┌───────────────┐
       │ Widget Tests  │  (Some)
       │    (30%)      │
       └───────────────┘
      ┌─────────────────┐
      │   Unit Tests    │  (Many)
      │     (60%)       │
      └─────────────────┘
```

### Test Coverage Goals

- Unit Tests: 80%+
- Widget Tests: 60%+
- Integration Tests: 40%+

---

## 📊 Monitoring & Analytics

### Key Metrics

**Performance**:
- App load time
- Page transition time
- API response time
- Export generation time

**Usage**:
- Active users
- Resumes created
- AI requests
- Export downloads

**Quality**:
- Error rate
- Crash-free rate
- Success rate (operations)

### Analytics Events

```dart
class AnalyticsEvents {
  static const resumeCreated = 'resume_created';
  static const resumeExported = 'resume_exported';
  static const aiSuggestionAccepted = 'ai_suggestion_accepted';
  static const aiSuggestionRejected = 'ai_suggestion_rejected';
  static const jobDescriptionAnalyzed = 'job_description_analyzed';
}
```

---

## 🔄 CI/CD Pipeline

```
Code Push
    ↓
GitHub Actions Triggered
    ↓
┌───────────────┐
│  Run Tests    │
│  - Unit       │
│  - Widget     │
│  - Integration│
└───────┬───────┘
        ↓
┌───────────────┐
│  Build App    │
│  - Web        │
│  - Optimize   │
└───────┬───────┘
        ↓
┌───────────────┐
│  Deploy       │
│  - Firebase   │
│  - Hosting    │
└───────────────┘
```

---

## 📦 Deployment Architecture

```
User Browser
     ↓
CDN (Firebase Hosting)
     ↓
Static Assets (HTML, JS, CSS)
     ↓
API Calls
     ↓
Firebase Services
     ├─ Auth
     ├─ Firestore
     ├─ Storage
     └─ Functions (optional)
     
External APIs
     └─ Gemini AI
```

---

## 🔮 Scalability Considerations

### Current Limits
- Firestore: 1 write/second per document
- Storage: 5GB free tier
- Gemini API: Rate limits per minute

### Scaling Strategy
1. **Horizontal Scaling**: Firebase auto-scales
2. **Caching**: Reduce database reads
3. **Batch Operations**: Group writes
4. **CDN**: Static asset delivery
5. **Database Sharding**: If needed

---

*Architecture Document v1.0*  
*Last Updated: May 2, 2026*
