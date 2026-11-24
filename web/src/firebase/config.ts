import { initializeApp, getApps, getApp, type FirebaseApp } from 'firebase/app';
import { getAuth, type Auth } from 'firebase/auth';
import { getFirestore, type Firestore } from 'firebase/firestore';
import { getAnalytics, isSupported, type Analytics } from 'firebase/analytics';

const firebaseConfig = {
  apiKey: import.meta.env.VITE_FIREBASE_API_KEY || 'AIzaSyBnZQwPE-SvV3i3_qU3oGA3Jo5o8PbJ3Do',
  authDomain: import.meta.env.VITE_FIREBASE_AUTH_DOMAIN || 'project-11ec6340-9952-4350-aed.firebaseapp.com',
  projectId: import.meta.env.VITE_FIREBASE_PROJECT_ID || 'project-11ec6340-9952-4350-aed',
  storageBucket: import.meta.env.VITE_FIREBASE_STORAGE_BUCKET || 'project-11ec6340-9952-4350-aed.firebasestorage.app',
  messagingSenderId: import.meta.env.VITE_FIREBASE_MESSAGING_SENDER_ID || '990796794350',
  appId: import.meta.env.VITE_FIREBASE_APP_ID || '1:990796794350:web:c7140127350de9f8da66ff',
  measurementId: import.meta.env.VITE_FIREBASE_MEASUREMENT_ID || 'G-VHCWLY6E8L',
};

// Initialisation Firebase
let app: FirebaseApp;
let auth: Auth | null = null;
let db: Firestore | null = null;
let analytics: Analytics | null = null;
let isConfigured = false;

try {
  app = !getApps().length ? initializeApp(firebaseConfig) : getApp();
  auth = getAuth(app);
  db = getFirestore(app);
  isConfigured = true;

  if (typeof window !== 'undefined') {
    isSupported().then((supported) => {
      if (supported) {
        analytics = getAnalytics(app);
      }
    });
  }
} catch (error) {
  console.warn('Firebase initialization warning:', error);
  app = {} as FirebaseApp;
}

export { app, auth, db, analytics, isConfigured, firebaseConfig };
