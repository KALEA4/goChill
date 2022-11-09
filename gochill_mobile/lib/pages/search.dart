import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reprise_1/partials/bottomNavigationBar.dart';
import 'package:reprise_1/partials/drawer.dart';

class SearchEvent extends StatefulWidget {
  @override
  State<SearchEvent> createState() => _SearchEventState();
}

class _SearchEventState extends State<SearchEvent>{

  // creation de vareiable pour le slider
  double _currentValue = 0;
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions:  [
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.notifications_outlined)
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text("Recherche",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.center,),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff2a2c41),
                          hintText: "Search events",
                          prefixIcon: Icon(Icons.search_outlined,color: Colors.white70,),
                          contentPadding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
                          hintStyle: TextStyle(
                              color: Colors.white70
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Card(
                        color: Color(0xff2a2c41),
                        child:Container(
                          padding: EdgeInsets.only(left: 3,top: 5,bottom: 5,right: 1),
                          child:  IconButton(
                              onPressed: (){
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20)
                                      )
                                    ),
                                    context: context,
                                    builder: (context) => StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState){
                                          return Container(
                                            child: Padding(
                                              padding: EdgeInsets.all(30),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(right: 10),
                                                        width: 50,
                                                        child: Text('Date: ',style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.bold,
                                                            letterSpacing: 1.2,
                                                            color: Colors.black87
                                                        ),),
                                                      ),
                                                      Container(
                                                        width: 240,
                                                        height: 50,
                                                        child: TextField(
                                                          controller: dateinput,
                                                          decoration: InputDecoration(
                                                            icon: Icon(Icons.calendar_today),
                                                            labelText: "Choisir une date",
                                                            fillColor: Color(0xffa7620d),
                                                            focusColor: Color(0xffa7620d)
                                                          ),
                                                          readOnly: true,
                                                          onTap: () async{
                                                            DateTime? pickedDate = await showDatePicker(
                                                                context: context,
                                                                initialDate: DateTime.now(),
                                                                firstDate: DateTime.now(),
                                                                lastDate: DateTime(2101)
                                                            );

                                                            if(pickedDate != null){
                                                              print(pickedDate);
                                                              //String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);


                                                            }
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(top: 20),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          child: Text('Lieu: ',style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.bold,
                                                              letterSpacing: 1.2,
                                                              color: Colors.black87
                                                          ),),
                                                        ),
                                                        Container(
                                                          width: 240,
                                                          height: 50,
                                                          child: TextFormField(
                                                            decoration: InputDecoration(
                                                              filled: true,
                                                              fillColor: Colors.transparent,
                                                              hintText: "Choisir un lieu",
                                                              suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                                              contentPadding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
                                                              hintStyle: TextStyle(
                                                                  color: Colors.black
                                                              ),
                                                              border: OutlineInputBorder(
                                                                borderSide: BorderSide(color: Colors.white),
                                                                borderRadius: BorderRadius.circular(5),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  /*Container(
                                                    margin: EdgeInsets.only(top: 20),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          child: Text('Prix: ',style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.bold,
                                                              letterSpacing: 1.2,
                                                              color: Colors.black87
                                                          ),),
                                                        ),
                                                        Container(
                                                          width: 240,
                                                          child: Slider(
                                                            value: _currentValue,
                                                            activeColor: Colors.orange,
                                                            min: 0,
                                                            max: 20000,
                                                            label: _currentValue.toString(),
                                                            divisions: 4,
                                                            onChanged: (value){
                                                              setState(() {
                                                                _currentValue = value;
                                                              });
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),*/
                                                  Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: ElevatedButton(
                                                      onPressed: (){

                                                      },
                                                      child: Center(
                                                        child: Text('Recherche'),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                        padding: EdgeInsets.only(top: 20, bottom: 20),
                                                        elevation: 2.0,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(5.0)),
                                                        primary: Colors.orange
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                    )
                                );
                              },
                              icon: Icon(Icons.filter_list,color: Colors.white70,)
                          ),
                        )
                      )
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50),
                  child: Text('Trouvez vos évènements et lieux pour une meilleure expérience',style: TextStyle(
                    color: Colors.white,
                  ),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        )
    );
  }

}

