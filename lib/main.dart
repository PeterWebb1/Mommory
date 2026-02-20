import 'package:flutter/material.dart';

void main() {
  runApp(const MommoryApp());
}

class MommoryApp extends StatelessWidget {
  const MommoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mommory',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFCF8F4),
        fontFamily: 'SF Pro Display',
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void _goToNextScreen(BuildContext context) {
    // TODO: Replace `NextScreenPlaceholder` with your real destination screen.
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const NextScreenPlaceholder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFDF8F4),
              Color(0xFFFFFBF8),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F6FA),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF17203A).withValues(alpha: 0.07),
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.dark_mode_rounded,
                      size: 22,
                      color: Color(0xFF4A5A72),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: size.width * 0.84,
                      height: size.width * 0.84,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9EAE0),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFD6B9A4).withValues(alpha: 0.18),
                            blurRadius: 36,
                            offset: const Offset(0, 14),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.50,
                      height: size.width * 0.66,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3E2D8),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: const Color(0xFFE2C4AA),
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF9C7959).withValues(alpha: 0.18),
                            blurRadius: 12,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: Image.asset(
                            'assets/images/welcome_illustration.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, _, __) => Container(
                              color: const Color(0xFFF1E5DE),
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.family_restroom_rounded,
                                size: 60,
                                color: Color(0xFFC5AFA0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 70,
                      child: Icon(
                        Icons.auto_awesome,
                        color: const Color(0xFFF8D98A).withValues(alpha: 0.95),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      right: 36,
                      top: 54,
                      child: Icon(
                        Icons.favorite_rounded,
                        color: const Color(0xFFF8BFAD).withValues(alpha: 0.95),
                        size: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.055),
                const Text(
                  'Every little moment\nmatters 💛',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121D37),
                    fontSize: 48 / 2,
                    height: 1.25,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.2,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  "Capture your child’s story, one\nmemory at a time.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6D7D99),
                    fontSize: 16,
                    height: 1.55,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () => _goToNextScreen(context),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFFF6B9A7),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      shadowColor:
                          const Color(0xFFD58D78).withValues(alpha: 0.28),
                    ).copyWith(
                      overlayColor: WidgetStatePropertyAll(
                        Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: const Text(
                      'Let’s begin',
                      style: TextStyle(
                        fontSize: 33 / 2,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFA0AFC5),
                    ),
                    children: [
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Color(0xFF1C2A45),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NextScreenPlaceholder extends StatelessWidget {
  const NextScreenPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen')),
      body: const Center(
        child: Text('Replace this screen with your real destination.'),
      ),
    );
  }
}
