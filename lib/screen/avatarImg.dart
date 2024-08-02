import 'package:flutter/material.dart';

class MyAvatarPage extends StatelessWidget {
  const MyAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    const gradiantColor = [
      Color.fromARGB(100, 235, 235, 235),
      Color.fromARGB(255, 235, 235, 235),
      Color.fromARGB(255, 235, 235, 235),
      Color.fromARGB(255, 235, 235, 235),
      Color.fromARGB(100, 235, 235, 235),
    ];
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ClipRect(
            clipBehavior: Clip.antiAlias,
            child: Container(
              color: Colors.white,
              width: 190,
              height: 190,
              child: Stack(
                children: [
                  _buildGradientCircle(190 / 1.8, 0.75, gradiantColor),
                  _buildGradientCircle(190 / 2, 0.6, gradiantColor),
                  Transform.scale(
                    scaleX: 0.3,
                    scaleY: 0.3,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage('images/1.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGradientCircle(
      double size, double scale, List<Color> gradientColors) {
    return Center(
      child: SizedBox(
        height: size,
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: GradientBorderShadowCircle(
            scale: scale,
            borderWidth: 2,
            shadowBlurRadius: 20,
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientBorderShadowCircle extends StatelessWidget {
  final double scale;
  final double borderWidth;
  final double shadowBlurRadius;
  final Gradient gradient;

  const GradientBorderShadowCircle({
    super.key,
    required this.scale,
    required this.borderWidth,
    required this.shadowBlurRadius,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: _GradientBorderShadowPainter(
          borderWidth: borderWidth,
          shadowBlurRadius: shadowBlurRadius,
          gradient: gradient,
        ),
      ),
    );
  }
}

class _GradientBorderShadowPainter extends CustomPainter {
  final double borderWidth;
  final double shadowBlurRadius;
  final Gradient gradient;

  _GradientBorderShadowPainter({
    required this.borderWidth,
    required this.shadowBlurRadius,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final shadowPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, shadowBlurRadius);

    final radius = (size.width / 2) - (borderWidth / 2);

    canvas.drawCircle(size.center(Offset.zero), radius, shadowPaint);
    canvas.drawCircle(size.center(Offset.zero), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
