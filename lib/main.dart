import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        showSemanticsDebugger: false,
        home: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MVPContainer(
                  width: MediaQuery.of(context).size.width,
                  borderRadiusCustomizable: true,
                  borderRadiusBottomLeft: 12,
                  borderRadiusBottomRight: 0,
                  borderRadiusTopRight: 12,
                  borderRadiusTopLeft: 0,
                  color: Colors.blue,
                  isChildCenter: true,
                  child: const Text(
                    "Далее",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            MVPTextField()],
          ),
        )));
  }
}

class MVPContainer extends StatefulWidget {
  final Function()? onTap;
  final Function()? onLongPress;
  final double? width;
  final double? height;
  final double? borderRadiusAll;
  final double? borderRadiusTopLeft;
  final double? borderRadiusTopRight;
  final double? borderRadiusBottomLeft;
  final double? borderRadiusBottomRight;
  final double? paddingAll;
  final double? paddingTop;
  final double? paddingRight;
  final double? paddingBottom;
  final double? paddingLeft;
  final bool? borderRadiusCustomizable;
  final bool? hasPaddingCustomizable;
  final bool? isChildCenter;
  final Color? color;
  final Widget? child;

  const MVPContainer(
      {super.key,
      this.width = 50,
      this.height = 50,
      this.color = Colors.white24,
      this.borderRadiusCustomizable,
      this.borderRadiusAll,
      this.borderRadiusTopLeft,
      this.borderRadiusTopRight,
      this.borderRadiusBottomLeft,
      this.borderRadiusBottomRight,
      this.child,
      this.hasPaddingCustomizable,
      this.paddingAll,
      this.paddingTop,
      this.paddingRight,
      this.paddingBottom,
      this.paddingLeft,
      this.onTap,
      this.onLongPress,
      this.isChildCenter});

  @override
  State<MVPContainer> createState() => _MVPContainerState();
}

class _MVPContainerState extends State<MVPContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: widget.borderRadiusCustomizable == false
                ? BorderRadius.circular(widget.borderRadiusAll!)
                : widget.borderRadiusCustomizable == true
                    ? BorderRadius.only(
                        topLeft: Radius.circular(widget.borderRadiusTopLeft!),
                        topRight: Radius.circular(widget.borderRadiusTopRight!),
                        bottomLeft:
                            Radius.circular(widget.borderRadiusBottomLeft!),
                        bottomRight:
                            Radius.circular(widget.borderRadiusBottomRight!))
                    : null),
        padding: widget.hasPaddingCustomizable == false
            ? EdgeInsets.all(widget.paddingAll!)
            : widget.hasPaddingCustomizable == false
                ? EdgeInsets.only(
                    top: widget.paddingTop!,
                    bottom: widget.paddingBottom!,
                    left: widget.paddingLeft!,
                    right: widget.paddingRight!)
                : null,
        child: widget.isChildCenter == false
            ? widget.child
            : widget.isChildCenter == true
                ? Center(
                    child: widget.child,
                  )
                : null,
      ),
    );
  }
}

class MVPTextField extends StatefulWidget {
  const MVPTextField({super.key});

  @override
  State<MVPTextField> createState() => _MVPTextFieldState();
}

class _MVPTextFieldState extends State<MVPTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(

    );
  }
}
