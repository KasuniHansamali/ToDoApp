import 'package:flutter/material.dart';
import 'package:todo/screens/homepage.dart';



class ScreenBody extends StatefulWidget {




  @override
  _ScreenBodyState createState() => _ScreenBodyState();
}
class _ScreenBodyState extends State<ScreenBody>{

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // This set the position of the inside Container to top-left
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 60, bottom: 0, left: 10),
                child: Text.rich(TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ToDo App',
                      style: TextStyle(
                          fontFamily: 'SanFrancisco',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                      color: Colors.teal[700],
                      ),
                    ),

                  ],
                )),
              ),
            ),

            // This Column will align to center
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 100,
                ),
                Image(
                  image: AssetImage('assets/images/checklists.png'),
                  height: 350,
                  width: 300.0,
                ),
                SizedBox(
                  height: 140,
                ),

                Padding(
                  padding: const EdgeInsets.all(16),

                  child: SizedBox(
                    height: 46,
                    width: 300,
                    child: MaterialButton(




                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      color: Colors.teal[800],
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage()));

                      },
                      child: Text('GET START!!',style: TextStyle(
                        fontFamily: 'Corporate S SC Bold',
                        fontSize: (22),
                        color: Colors.white70,
                        fontWeight: FontWeight.bold, )),
                    ),
                  ),
                ),


              ],
            ),


          ],
        ),
      ),


    );





  }



}




