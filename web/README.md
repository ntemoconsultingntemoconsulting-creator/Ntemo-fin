# Ntemo Web (React + TypeScript + Vite + Firebase)

Application Web moderne pré-configurée avec le SDK Firebase.

## Modules Firebase installés

- `firebase/app`
- `firebase/auth`
- `firebase/firestore`

## Configuration Firebase

1. Créez un projet dans la [Console Firebase](https://console.firebase.google.com).
2. Ajoutez une application Web à votre projet.
3. Remplissez les variables dans le fichier `.env` :

```env
VITE_FIREBASE_API_KEY=votre_api_key
VITE_FIREBASE_AUTH_DOMAIN=votre_projet.firebaseapp.com
VITE_FIREBASE_PROJECT_ID=votre_project_id
VITE_FIREBASE_STORAGE_BUCKET=votre_projet.appspot.com
VITE_FIREBASE_MESSAGING_SENDER_ID=votre_messaging_sender_id
VITE_FIREBASE_APP_ID=votre_app_id
```

## Démarrage

```bash
# Lancer le serveur de développement
npm run dev

# Compiler pour la production
npm run build
```
