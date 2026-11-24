import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool firebaseInitialized = false;
  String? firebaseError;

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseInitialized = true;
  } catch (e) {
    firebaseError = e.toString();
  }

  runApp(MyApp(
    firebaseInitialized: firebaseInitialized,
    firebaseError: firebaseError,
  ));
}

class MyApp extends StatelessWidget {
  final bool firebaseInitialized;
  final String? firebaseError;

  const MyApp({
    super.key,
    required this.firebaseInitialized,
    this.firebaseError,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ntemo Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(
        firebaseInitialized: firebaseInitialized,
        firebaseError: firebaseError,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final bool firebaseInitialized;
  final String? firebaseError;

  const HomeScreen({
    super.key,
    required this.firebaseInitialized,
    this.firebaseError,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ntemo Mobile - Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                firebaseInitialized
                    ? Icons.check_circle_outline
                    : Icons.cloud_queue_outlined,
                size: 80,
                color: firebaseInitialized ? Colors.green : Colors.amber.shade700,
              ),
              const SizedBox(height: 24),
              Text(
                'Application Flutter & Firebase',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 0,
                color: firebaseInitialized
                    ? Colors.green.withValues(alpha: 0.1)
                    : Colors.amber.withValues(alpha: 0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: firebaseInitialized ? Colors.green : Colors.amber,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            firebaseInitialized ? Icons.done : Icons.info_outline,
                            color: firebaseInitialized
                                ? Colors.green
                                : Colors.amber.shade800,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            firebaseInitialized
                                ? 'Firebase initialisé avec succès !'
                                : 'Firebase en attente de configuration',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: firebaseInitialized
                                  ? Colors.green.shade900
                                  : Colors.amber.shade900,
                            ),
                          ),
                        ],
                      ),
                      if (firebaseError != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Note: Exécutez `flutterfire configure` ou modifiez `lib/firebase_options.dart` avec vos clés Firebase.',
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 16),
              Text(
                'Services Firebase pré-installés :',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: const [
                  Chip(
                    avatar: Icon(Icons.settings, size: 18),
                    label: Text('firebase_core'),
                  ),
                  Chip(
                    avatar: Icon(Icons.person, size: 18),
                    label: Text('firebase_auth'),
                  ),
                  Chip(
                    avatar: Icon(Icons.storage, size: 18),
                    label: Text('cloud_firestore'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
