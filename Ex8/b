import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Fade Animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Slide Animation
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(_controller);

    // Scale Animation
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    // Rotation Animation
    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    // Size Animation
    _sizeAnimation = Tween<double>(
      begin: 50.0,
      end: 150.0,
    ).animate(_controller);
  }

  void _startAnimation() {
    _controller.forward(from: 0.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Animations")),

      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fade Animation
                Opacity(
                  opacity: _fadeAnimation.value,
                  child: const Text(
                    "Fade Animation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),

                // Slide Animation
                SlideTransition(
                  position: _slideAnimation,
                  child: Container(
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    color: Colors.blue,
                    child: const Text(
                      "Slide",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Scale Animation
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: const Icon(
                    Icons.favorite,
                    size: 60,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(height: 20),

                // Rotation Animation
                RotationTransition(
                  turns: _rotationAnimation,
                  child: const Icon(Icons.settings, size: 60),
                ),

                const SizedBox(height: 20),

                // Size Animation
                Container(
                  width: _sizeAnimation.value,
                  height: _sizeAnimation.value,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text(
                    "Size",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
