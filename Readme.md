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
