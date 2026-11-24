# Ntemo-fin (Monorepo Flutter & Web)

Ce projet comprend deux applications avec support complet de Firebase :

- **`mobile/`** : Application mobile développée en **Flutter** (Android / iOS / Desktop / Web).
- **`web/`** : Application web développée avec **React + TypeScript + Vite**.

---

## 📱 1. Application Mobile (`mobile/`)

- **Framework :** Flutter (Dart)
- **Dépendances Firebase :**
  - `firebase_core`
  - `firebase_auth`
  - `cloud_firestore`
- **Fichier de configuration :** `mobile/lib/firebase_options.dart`
- **Lancer :**
  ```bash
  cd mobile
  flutter run
  ```

Pour configurer automatiquement Firebase avec votre compte Google :
```bash
cd mobile
dart pub global activate flutterfire_cli
flutterfire configure
```

---

## 💻 2. Application Web (`web/`)

- **Framework :** React 19 + TypeScript + Vite
- **Dépendances Firebase :**
  - `firebase` (SDK officiel modulaire)
- **Fichier de configuration :** `web/src/firebase/config.ts` et variables d'environnement `web/.env`
- **Lancer :**
  ```bash
  cd web
  npm run dev
  ```

---

## ☁️ Liaison Firebase commune

Si vous souhaitez partager les mêmes données d'authentification et base de données Firestore entre le projet Flutter et le projet Web :
1. Créez un seul projet sur la [Console Firebase](https://console.firebase.google.com).
2. Ajoutez une application **Android** / **iOS** (pour Flutter) et une application **Web** (pour React).
3. Renseignez les identifiants générés dans chaque sous-dossier respectif (`mobile/lib/firebase_options.dart` et `web/.env`).
