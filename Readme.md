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

---

## 🏗 Stateless vs Stateful Widgets Demo (Sprint-2)

### Summary of Implementation
We implemented a dedicated demonstration screen (`StatelessStatefulDemo`) accessible from the authentication screen to highlight the fundamental differences between `StatelessWidget` and `StatefulWidget` in Flutter. The demo features a turf-themed counter.

- **StatelessWidget vs StatefulWidget**
  - **StatelessWidget:** A widget that does not require mutable state. Once built, its appearance and properties remain constant unless its parent widget passes different configurations. Use it for static elements like labels, icons, and non-interactive cards.
  - **StatefulWidget:** A widget that maintains internal state which can mutate during its lifecycle. When `setState()` is called, it triggers a rebuild of the widget to reflect the new state, making it essential for interactive elements, animations, and dynamically updated data.

### Code Snippets

**Stateless HeaderWidget:**
```dart
class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(title), // Static UI, receives data from parent
    );
  }
}
```

**Stateful TurfCounterWidget:**
```dart
class TurfCounterWidget extends StatefulWidget {
  @override
  State<TurfCounterWidget> createState() => _TurfCounterWidgetState();
}

class _TurfCounterWidgetState extends State<TurfCounterWidget> {
  int _bookedTurfs = 0;

  void _increment() {
    setState(() {
      _bookedTurfs++; // Mutates state and triggers UI rebuild
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Turfs Booked: $_bookedTurfs'),
        ElevatedButton(onPressed: _increment, child: Text('Book Turf')),
      ],
    );
  }
}
```

### Screenshots
*Initial state (Add screenshot here)*
*Updated state after interaction (Add screenshot here)*

### Reflection

**1. How do Stateful widgets make Flutter apps dynamic?**
Stateful widgets use the `setState()` method to notify the framework that the internal state has changed. Flutter then efficiently rebuilds only that specific widget (and its children), allowing the app to respond to user interactions, network responses, or animations in real-time.

**2. Why is it important to separate static and reactive parts of the UI?**
Separating static (`StatelessWidget`) and reactive (`StatefulWidget`) UI components dramatically improves app performance and readability. Rebuilding the entire screen on every minor interaction is computationally expensive. By isolating state to the smallest possible widgets, Flutter only re-renders the exact pixels that change, ensuring smooth 60fps+ animations.

---

## 📝 Handling User Input with Forms (Sprint-2)

### Summary of Implementation
We implemented a `UserInputForm` screen allowing users to request a turf booking by entering their name, email, and turf selection. The form uses `TextFormField` integrated with a `GlobalKey<FormState>` to enforce real-time validation before submitting data interactively. It is accessible via the main authentication page to demonstrate text inputs and state management.

### Code Snippets

**Form Fields and Validation Logic:**
```dart
TextFormField(
  controller: _emailController,
  decoration: const InputDecoration(
    labelText: 'Email Address',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email),
  ),
  validator: (value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains('@') || !value.contains('.')) {
      return 'Enter a valid email address';
    }
    return null; // Passes validation
  },
),
```

**Form Submission:**
```dart
ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Booking Request Submitted Successfully!'),
          backgroundColor: Colors.green,
        ),
      );
      // Proceed to process data
    }
  },
  child: const Text('Submit Booking'),
)
```

### Screenshots
*Form before input (Add screenshot here)*
*Form showing validation errors (Add screenshot here)*
*Success message after submission (Add screenshot here)*

### Reflection

**1. Why is input validation important in mobile apps?**
Input validation strictly enforces data integrity before it ever reaches the backend database. It prevents user typos from causing server errors, mitigates security risks like injection attacks, and provides immediate, contextual guidance to the user, thereby enhancing the overall UX. 

**2. What’s the difference between TextField and TextFormField?**
`TextField` is a standalone widget for capturing basic user input. `TextFormField` is a specialized wrapper around `TextField` designed to seamlessly integrate with the Flutter `Form` widget. It automatically exposes properties like `validator` and `onSaved`, allowing multiple fields to be evaluated collectively holding the form's state.

**3. How does form state management simplify validation?**
By using a `GlobalKey<FormState>`, Flutter consolidates the validation state of all descendant `TextFormField`s into a single controller. Thus, calling `_formKey.currentState!.validate()` iterates through every field's validator function automatically. This eliminates the need to manually track or listen to every individual text controller's change events.
