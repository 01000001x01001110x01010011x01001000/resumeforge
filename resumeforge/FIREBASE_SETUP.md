# Firebase Setup Guide

## 🔥 Setting Up Firebase for ResumeForge AI

Follow these steps to configure Firebase for your application.

---

## Step 1: Install Firebase CLI

### macOS
```bash
npm install -g firebase-tools
```

### Verify Installation
```bash
firebase --version
```

---

## Step 2: Login to Firebase

```bash
firebase login
```

This will open your browser. Sign in with your Google account.

---

## Step 3: Install FlutterFire CLI

```bash
dart pub global activate flutterfire_cli
```

### Add to PATH
```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

Add this line to your `~/.zshrc` or `~/.bashrc` to make it permanent.

---

## Step 4: Configure FlutterFire

Navigate to your project directory:

```bash
cd /Users/anshbhardwaj/Documents/resumeforge/resumeforge
```

Run FlutterFire configuration:

```bash
flutterfire configure
```

### What This Does:
1. Prompts you to select or create a Firebase project
2. Asks which platforms to configure (select **Web**)
3. Automatically generates `lib/firebase_options.dart`
4. Updates your project with Firebase configuration

### During Configuration:
- **Select Project**: Choose existing or create new
- **Select Platforms**: Choose `web` (press Space to select, Enter to confirm)
- **Project ID**: Will be auto-generated or you can specify

---

## Step 5: Enable Firebase Services

### 1. Go to Firebase Console
https://console.firebase.google.com

### 2. Select Your Project

### 3. Enable Authentication
1. Click **Authentication** in left sidebar
2. Click **Get Started**
3. Go to **Sign-in method** tab
4. Enable **Email/Password**
5. Click **Save**

### 4. Enable Firestore Database
1. Click **Firestore Database** in left sidebar
2. Click **Create Database**
3. Select **Start in test mode** (we'll update rules later)
4. Choose location closest to you
5. Click **Enable**

### 5. Enable Firebase Storage
1. Click **Storage** in left sidebar
2. Click **Get Started**
3. Select **Start in test mode**
4. Click **Next** → **Done**

---

## Step 6: Update Firestore Security Rules

In Firebase Console → Firestore Database → Rules:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Helper function to check if user is authenticated
    function isAuthenticated() {
      return request.auth != null;
    }
    
    // Helper function to check if user owns the resource
    function isOwner(userId) {
      return isAuthenticated() && request.auth.uid == userId;
    }
    
    // Users collection
    match /users/{userId} {
      allow read: if isOwner(userId);
      allow write: if isOwner(userId);
    }
    
    // Resumes collection
    match /resumes/{resumeId} {
      allow read: if isOwner(resource.data.userId);
      allow create: if isAuthenticated();
      allow update, delete: if isOwner(resource.data.userId);
    }
    
    // Resume versions collection
    match /resume_versions/{versionId} {
      allow read: if isAuthenticated();
      allow write: if isAuthenticated();
    }
  }
}
```

Click **Publish** to save.

---

## Step 7: Update Storage Security Rules

In Firebase Console → Storage → Rules:

```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    // Helper function to check if user is authenticated
    function isAuthenticated() {
      return request.auth != null;
    }
    
    // User resumes and exports
    match /users/{userId}/resumes/{allPaths=**} {
      allow read: if isAuthenticated() && request.auth.uid == userId;
      allow write: if isAuthenticated() && request.auth.uid == userId;
    }
    
    // Resume exports
    match /exports/{userId}/{allPaths=**} {
      allow read: if isAuthenticated() && request.auth.uid == userId;
      allow write: if isAuthenticated() && request.auth.uid == userId;
    }
  }
}
```

Click **Publish** to save.

---

## Step 8: Update Your Code

### 1. Uncomment Firebase Initialization in main.dart

```dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // ✅ Uncomment these lines:
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const ProviderScope(child: ResumeForgeApp()));
}
```

### 2. Uncomment Route Protection

In `main.dart`, find the `redirect` function and uncomment:

```dart
redirect: (context, state) {
  // ✅ Uncomment these lines:
  final isAuthenticated = authState.value != null;
  final isLoggingIn = state.matchedLocation == '/login';
  
  if (!isAuthenticated && !isLoggingIn) {
    return '/login';
  }
  
  if (isAuthenticated && isLoggingIn) {
    return '/dashboard';
  }
  
  return null;
},
```

---

## Step 9: Hot Restart the App

Since Firebase initialization happens in `main()`, you need to do a **full restart**:

1. In the terminal running Flutter, press `R` (capital R)
2. Or kill the app and run again:
   ```bash
   flutter run -d chrome --web-port=8080
   ```

---

## Step 10: Test Authentication

### Create an Account
1. Go to http://localhost:8080/login
2. Click "Sign Up" link (once we create the sign up page)
3. Enter email, password, name
4. Click "Create Account"

### Or Create Test User in Firebase Console
1. Go to Firebase Console → Authentication
2. Click **Add User**
3. Enter email and password
4. Click **Add User**

### Sign In
1. Go to http://localhost:8080/login
2. Enter your test credentials
3. Click "Sign In"
4. Should redirect to dashboard!

---

## Verification Checklist

After setup, verify everything works:

- [ ] Firebase project created
- [ ] FlutterFire configured
- [ ] `firebase_options.dart` generated
- [ ] Authentication enabled
- [ ] Firestore database created
- [ ] Storage enabled
- [ ] Security rules updated
- [ ] Code uncommented
- [ ] App restarts without errors
- [ ] Can create user in Firebase Console
- [ ] Can sign in with test user
- [ ] Redirects to dashboard after sign in
- [ ] Redirects to login when not authenticated

---

## Troubleshooting

### Error: Firebase not initialized
**Solution**: Make sure you uncommented the Firebase.initializeApp() line and did a hot restart (R).

### Error: No Firebase project selected
**Solution**: Run `flutterfire configure` again and select your project.

### Error: Authentication failed
**Solution**: 
1. Check Firebase Console → Authentication is enabled
2. Check Email/Password provider is enabled
3. Check your internet connection

### Error: Permission denied (Firestore)
**Solution**: 
1. Check Firestore security rules are updated
2. Make sure you're signed in
3. Check the userId in the document matches auth user

### Error: Can't access firebase_options.dart
**Solution**: Make sure `flutterfire configure` completed successfully and the file was generated.

---

## Firebase Console URLs

Quick access to your Firebase project:

- **Console**: https://console.firebase.google.com
- **Authentication**: https://console.firebase.google.com/project/_/authentication/users
- **Firestore**: https://console.firebase.google.com/project/_/firestore
- **Storage**: https://console.firebase.google.com/project/_/storage
- **Rules**: Each service has a "Rules" tab

---

## Security Best Practices

### Development
- Use test mode for Firestore and Storage
- Create test users for development
- Don't commit sensitive data

### Production
- Update security rules to be more restrictive
- Enable email verification
- Set up rate limiting
- Monitor usage and costs
- Enable App Check
- Use environment variables for sensitive config

---

## Cost Management

Firebase free tier includes:
- **Authentication**: Unlimited users
- **Firestore**: 1GB storage, 50K reads/day, 20K writes/day
- **Storage**: 5GB storage, 1GB/day downloads
- **Hosting**: 10GB storage, 360MB/day bandwidth

For ResumeForge AI, this should be plenty for development and initial users!

---

## Next Steps After Firebase Setup

1. ✅ Create sign up page
2. ✅ Test full auth flow
3. ✅ Implement resume repository
4. ✅ Connect dashboard to Firestore
5. ✅ Create resume CRUD operations

---

## Quick Command Reference

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Install FlutterFire CLI
dart pub global activate flutterfire_cli

# Login to Firebase
firebase login

# Configure FlutterFire
flutterfire configure

# List Firebase projects
firebase projects:list

# Select a project
firebase use <project-id>

# Deploy Firestore rules
firebase deploy --only firestore:rules

# Deploy Storage rules
firebase deploy --only storage
```

---

**Status**: Ready to configure! 🔥

Follow these steps in order and you'll have Firebase running in ~15 minutes!

---

*Last Updated: May 2, 2026*
