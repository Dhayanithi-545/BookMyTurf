BookMyTurf is a **location-based turf booking mobile application** that enables players to discover nearby turfs, check real-time availability, and book slots securely, while allowing turf owners to manage their turfs, slots, and bookings efficiently.

The project focuses on **simplicity, reliability, and prevention of double booking**, built using Flutter and Firebase.

---

## 🚀 Project Overview

### Problem Statement
Most turf bookings are handled manually via phone calls or messaging apps, leading to:
Double bookings
Poor visibility of slot availability
Inefficient management for turf owners
Bad user experience for players

### Solution
BookMyTurf provides:
Real-time slot availability
Secure slot-based booking
Full upfront UPI payments
Separate flows for Players and Turf Owners
Centralized and reliable booking management

---

## 🎯 Core Objectives

Prevent double booking using transactional logic
Keep the user interface minimal and intuitive
Enable fast booking (under 2 minutes for users)
Provide owners full control over turf and slot management
Build a scalable and production-ready architecture

---

## 👥 User Roles

### 👤 Player
Login using phone number (OTP)
Enable location to find nearby turfs
View turf details and availability
Select time slots
Pay full amount via UPI
View booking history

### 🏟 Turf Owner
Login using phone number (OTP)
Create and manage turf profile
Set slot duration and pricing
Block/unblock slots
View all bookings (online + offline)
Monitor daily bookings and earnings

---

## 🧩 Features

### Player Features
Phone authentication
Location-based turf discovery
Real-time slot availability
Slot-based booking system
Secure payment flow
Booking confirmation & history

### Turf Owner Features
Turf profile management
Slot configuration
Manual slot blocking
Booking management dashboard

### System Features
Role-based access control
Atomic slot booking logic
Firestore-backed real-time updates
Scalable data design

---

## 🛠 Tech Stack

### Frontend
**Flutter**
**Dart**
Material UI

### Backend & Services
**Firebase Authentication** (Phone + OTP)
**Cloud Firestore**
**Firebase Cloud Functions** (optional for validation)

### Payments
**UPI-based payments**

### Tools
Figma (UI/UX)
GitHub (Version Control)
Firebase Console

---
<!-- 
## 🗂 Project Structure
text

lib/
├── core/
│   ├── constants/
│   ├── utils/
│   └── services/
│
├── features/
│   ├── auth/
│   │   ├── screens/
│   │   ├── controllers/
│   │   └── models/
│   │
│   ├── player/
│   │   ├── screens/
│   │   ├── controllers/
│   │   └── models/
│   │
│   ├── owner/
│   │   ├── screens/
│   │   ├── controllers/
│   │   └── models/
│   │
│   └── booking/
│       ├── screens/
│       ├── controllers/
│       └── models/
│
└── main.dart -->

---

## 🔐 Firebase Authentication Integration (Sprint-2)

### Summary of Authentication Flow
BookMyTurf now integrates Firebase Authentication to handle user signups and logins securely. The flow includes an `AuthScreen` that allows users to toggle between Login and Signup modes using a single accessible form. Upon successful authentication, Firebase automatically manages the user session, providing a robust, out-of-the-box identity solution without the need for a custom backend.

### Setup Steps
1. **Enable Firebase Auth:** In the Firebase Console, navigating to Authentication → Sign-in method, we enabled the Email/Password provider.
2. **Add Dependencies:** Added `firebase_core` and `firebase_auth` to the `pubspec.yaml` file.
3. **Initialize App:** In `main.dart`, we ensured `WidgetsFlutterBinding.ensureInitialized()` is called before `await Firebase.initializeApp()`.
4. **Implement UI:** Created `auth_screen.dart` with text controllers for email and password, utilizing `FirebaseAuth.instance` to trigger sign in/up logic.

### Code Snippets

**Signup & Login Logic:**
```dart
Future<void> _submitAuthForm() async {
  try {
    if (isLogin) {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } else {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
    // Show success snackbar
  } on FirebaseAuthException catch (e) {
    // Handle error
  }
}
```

### Screenshot
*(Add Screenshot here: Firebase Console showing registered users)*

### Reflection

**1. How does Firebase simplify authentication management?**
Firebase Auth eliminates the need to build, secure, and maintain a custom backend for user identity. It automatically handles secure credential storage, password hashing, session tokens, and provides ready-to-use SDKs to verify users across different platforms.

**2. What security features make it better than custom auth systems?**
It adheres to industry standards (OAuth 2.0, OpenID Connect), providing battle-tested security. This includes automatic rate-limiting against brute-force attacks, prevention of common vulnerabilities like SQL injection in auth modules, and secure session management that is complex to implement correctly from scratch.

**3. What challenges did you face while implementing both flows?**
Managing the UI state effectively so the same form safely toggles between "Sign in" and "Sign up" without confusing context. Additionally, handling Firebase's asynchronous exceptions securely and displaying user-friendly error messages rather than raw stack traces required extra attention.
