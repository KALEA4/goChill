import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final  int index ;
  final ValueChanged<int> onChangedTab;

  const BottomNavigationBarWidget({required this.index, required this.onChangedTab}) ;

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {

    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null,),
    );
    return BottomAppBar( //bottom navigation bar on scaffold
      color:Colors.white,
      elevation: 6.0,
      shape: CircularNotchedRectangle(), //shape of notch
      notchMargin: 8, //notche margin between floating button and bottom appbar
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildTapItem(
                index: 0,
                icon: Icon(Icons.home_filled,)
            ),
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: buildTapItem(
                    index: 1,
                    icon: Icon(Icons.filter)
                ),
            ),
            buildTapItem(
                index: 2,
                icon: Icon(Icons.event_available_outlined)
            ),
            buildTapItem(
                index: 3,
                icon: Icon(Icons.person)
            )
          ],
        ),
      ),
    );
  }

  Widget buildTapItem({
    required int index,
    required Icon icon
  }){
    final isChanged = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isChanged ? Colors.orange : Colors.black,
        size: isChanged ? 30 : 20

      ),
      child: IconButton(
          onPressed: () => widget.onChangedTab(index),
          icon: icon
      ),
    );
  }
}

