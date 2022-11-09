import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(
              height: size.height / 2 - 70,
              child: Image.asset("assets/images/pexels-edward-eyer-1587292.jpg",fit: BoxFit.cover,),
            ),),
            Container(
              height: size.height / 2 ,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Afro Dance Chill',style: TextStyle(
                                color: Color(0xff000624),
                                fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Samedi 28/08/2022',style: TextStyle(
                                fontSize: 15,
                                color: Colors.orange
                            ),),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text("A partir de : ",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey
                                ),),
                                Text("2500 FCFA",style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey[600],
                  ),
                  Row(
                    children: [
                      Icon(Icons.place),
                      Expanded(child: Text("Cotonou Villa le Belier",style: TextStyle(color: Colors.black,fontSize: 14),))
                    ],
                  ),
                  Divider(
                    color: Colors.grey[600],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.star, color: Colors.yellow,),
                          Container(
                            child: Text("101 participants",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        child: Icon(Icons.arrow_forward_ios,size: 14,color: Colors.orange,),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Expanded(
                          child: Text("What this event offers",style: TextStyle(color: Colors.black,fontSize: 14),),
                        )
                      ),
                      InkWell(
                        onTap: (){
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
                                            Container()
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              )
                          );
                        },
                        child: Text("more",style: TextStyle(color: Colors.orange,fontSize: 14)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey[600],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Description",style: TextStyle(fontWeight:FontWeight.w500,color: Colors.black,fontSize: 18),),
                      ),
                      InkWell(
                        onTap: (){
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
                                            Container()
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              )
                          );
                        },
                        child: Text("Lire plus",style: TextStyle(color: Colors.orange,fontSize: 14)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(child: Text('Lets introduce you to the word of  happiness and enjoyment.'
                      'Meet new friends, discover places and make yourself happy!..',style: TextStyle(
                    color: Colors.black,height: 1.7
                  ),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
