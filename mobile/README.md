# Ntemo Mobile (Flutter + Firebase)

Ce projet Flutter est pré-configuré avec Firebase.

## Packages Firebase installés

- `firebase_core`
- `firebase_auth`
- `cloud_firestore`

## Configuration de Firebase

### Option 1 (Recommandée) : Avec FlutterFire CLI

1. Installez et connectez-vous à Firebase CLI si ce n'est pas déjà fait :
   ```bash
   npm install -g firebase-tools
   firebase login
   ```

2. Activez FlutterFire CLI :
   ```bash
   dart pub global activate flutterfire_cli
   ```

3. Exécutez la configuration automatique depuis ce dossier :
   ```bash
   flutterfire configure
   ```
   Cela mettra à jour automatiquement `lib/firebase_options.dart` avec les identifiants réels de votre projet Firebase.

### Option 2 : Manuelle

Modifiez directement le fichier `lib/firebase_options.dart` en remplaçant les valeurs fictives (`YOUR_API_KEY`, `YOUR_PROJECT_ID`, etc.) par les clés de votre console Firebase (Projet > Paramètres du projet).

## Lancer l'application

```bash
flutter run
```
