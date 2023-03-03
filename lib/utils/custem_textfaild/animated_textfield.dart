part of 'package:osltestcubit/variable/imports.dart';

class AnimatedTextField extends StatefulWidget {
  const AnimatedTextField({
    Key? key,
    required this.label,
    required this.suffix,
    required this.textController,
  }) : super(key: key);

  final String label;
  final Widget? suffix;
  final TextEditingController textController;

  @override
  _AnimatedTextFieldState createState() => _AnimatedTextFieldState();
}

class _AnimatedTextFieldState extends State<AnimatedTextField>
    with SingleTickerProviderStateMixin {
  late final FocusNode _focusNode;
  late final AnimationController _controller;
  late final Animation<double> _animation;

  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
        if (_isFocused) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: _isFocused ? Color(0xFFFF7900) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(_animation.value),
            ),
            child: child,
          );
        },
        child: TextField(
          controller: widget.textController,
          focusNode: _focusNode,

          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: TextStyle(
              color: _isFocused ? Color(0xFFFF7900) : Colors.grey,
            ),
            suffixIcon: widget.suffix,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
      ),
    );
  }
}
