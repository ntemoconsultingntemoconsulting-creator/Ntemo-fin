import React from 'react';
import './App.css';
import { isConfigured, firebaseConfig } from './firebase/config';

export const App: React.FC = () => {
  return (
    <div className="container">
      <header className="card">
        <div className="badge">
          {isConfigured ? '🟢 Connecté' : '🟠 Configuration requise'}
        </div>
        <h1>Ntemo Web & Firebase</h1>
        <p className="subtitle">
          Projet React + TypeScript + Vite avec SDK Firebase pré-intégré
        </p>

        <div className="status-box">
          <h3>Statut de Firebase :</h3>
          {isConfigured ? (
            <p className="text-success">
              Firebase est correctement configuré avec l'ID projet :{' '}
              <strong>{firebaseConfig.projectId}</strong>
            </p>
          ) : (
            <div>
              <p className="text-warning">
                Les clés actuelles sont des clés par défaut.
              </p>
              <p className="hint">
                Pour connecter votre propre projet Firebase, complétez le fichier{' '}
                <code>.env</code> à la racine du dossier <code>web/</code>.
              </p>
            </div>
          )}
        </div>

        <div className="modules-grid">
          <div className="module-item">
            <span className="module-icon">⚡</span>
            <h4>firebase/app</h4>
            <p>Initialisation & Core SDK</p>
          </div>
          <div className="module-item">
            <span className="module-icon">🔐</span>
            <h4>firebase/auth</h4>
            <p>Authentification utilisateurs</p>
          </div>
          <div className="module-item">
            <span className="module-icon">🗄️</span>
            <h4>firebase/firestore</h4>
            <p>Base de données NoSQL en temps réel</p>
          </div>
        </div>

        <div className="actions">
          <a
            href="https://console.firebase.google.com"
            target="_blank"
            rel="noreferrer"
            className="btn btn-primary"
          >
            Console Firebase
          </a>
          <a
            href="https://firebase.google.com/docs"
            target="_blank"
            rel="noreferrer"
            className="btn btn-secondary"
          >
            Documentation Firebase
          </a>
        </div>
      </header>
    </div>
  );
};

export default App;
