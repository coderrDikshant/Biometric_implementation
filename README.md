# 🔐 Flutter Biometric Authentication App

This Flutter application demonstrates secure login using biometrics (Fingerprint / Face ID) with a fallback PIN mechanism. It ensures secure authentication and enhances user experience through biometric login integration.

---

## 📦 Features

- ✅ **Biometric Authentication** (Fingerprint / Face ID)
- 🔑 **PIN Fallback Option**
- 🔐 **Secure PIN & Token Storage** using `flutter_secure_storage`
- 🔁 **PIN Change Secured by Biometric Verification**
- 🔒 **First-Time Biometric Setup Required**
- 🛡️ **Handles Biometric Unavailability / Failure**
- ⛔ **Back Navigation Disabled on Auth Screen**

---

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK (3.x.x)
- Android Studio or Visual Studio Code
- Device/emulator with biometric hardware

### Installation

1. **Clone or Download**

   ```bash
   git clone https://github.com/yourusername/biometric_app.git
   cd biometric_app
2. **Install Dependencies**
   flutter pub get
3. **Run the App**
   flutter run


### Notes & Assumptions
App assumes user must authenticate using biometrics first and set a PIN.

After setup, user can log in using either fingerprint or PIN.

Changing the PIN requires biometric authentication again.

Designed for Android; Face ID support on iOS requires additional setup.

###  Tech Stack
Flutter

local_auth for biometric API

flutter_secure_storage for secure data

Kotlin + Gradle for Android platform setup

### Video link

 https://drive.google.com/file/d/1USAdXGSSgwcRFboeLG4uT441dsBOK6r-/view?usp=sharing
