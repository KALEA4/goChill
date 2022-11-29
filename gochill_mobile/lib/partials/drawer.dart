import 'package:flutter/material.dart';
import 'package:reprise_1/pages/tips.dart';
import 'package:reprise_1/src/screen/home.dart';

  class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
              Container(
                height: 200,
                padding: EdgeInsets.all(10),
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom : Divider.createBorderSide(context,
                        color: Colors.transparent
                      )
                    )
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: CircleAvatar(),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('Fafa'),
                        ),
                        Text("#kalea")
                      ],
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      child: ListTile(
                        leading: Icon(Icons.add_box_outlined,color: Colors.black87,),
                        title: Text('Create Party',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87
                        ),),
                      ),
                      hoverColor: Colors.grey,
                      onTap: (){

                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart_outlined,color: Colors.black87,),
                      title: Text('Shops',style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87
                      ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_incandescent_outlined,color: Colors.black87,),
                      title: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TipsPage()));
                        },
                        child: Text('Tips',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87
                        ),),
                      )
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_outlined,color: Colors.black87,),
                      title: Text('Faq',style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87
                      ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment,color: Colors.black87,),
                      title: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text('Payement',style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87
                        ),),
                      )
                    ),
                    ListTile(
                      leading: Icon(Icons.settings,color: Colors.black87,),
                      title: Text('Settings',style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87
                      ),),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.login_outlined,color: Colors.black87,),
                      title: Text('Logout',style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87
                      ),),
                    )
                  ],
                ),
              )
            ],
          ),
    );
  }

}