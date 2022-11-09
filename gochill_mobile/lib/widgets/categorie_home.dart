import 'package:flutter/material.dart';

class CategorieHome extends StatelessWidget {

  final String title ;
  final String date ;
  final String lieu ;
  final String price ;
  final String image_url;
  final Widget details_link;

  CategorieHome({
    required this.title,
    required this.date,
    required this.lieu,
    required this.price,
    required this.image_url,
    required this.details_link
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => details_link));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: size.width * 0.5 - 20,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)
                ),
                child: Image.asset(image_url),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(date,style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(lieu,style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("A partir de "+price+" FCFA",style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
