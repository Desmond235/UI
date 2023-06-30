import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideNavBar extends StatefulWidget {
   final ScrollController controller;
  final Widget child;
  final Duration duration;
  const ScrollToHideNavBar({
    Key? key,
    required this.child,
    required this.controller,
    this.duration = const Duration(seconds:2),
  }) : super(key: key);
 

  @override
  State<ScrollToHideNavBar> createState() => _ScrollToHideNavBarState();
}

class _ScrollToHideNavBarState extends State<ScrollToHideNavBar> {
   bool _isVisible = true;

   @override
   void initState() {
    super.initState();
    widget.controller.addListener(listen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen(){
    final direction = widget.controller.position.userScrollDirection;
    if(direction == ScrollDirection.forward){
      show();
    }
    else if(direction == ScrollDirection.reverse){
      hide();
    }
    
  }
   
  //  show bottom nav bar
  void show(){
    if(!_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  // hide bottom nav bar
  void hide(){
    if (_isVisible) {
      setState(() => _isVisible = false);
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height:_isVisible? kBottomNavigationBarHeight : 0,
      child: Wrap(children: [widget.child])
  );
  }
}
