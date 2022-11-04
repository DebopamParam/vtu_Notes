import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Widget child;
  const MyButton({Key? key, required this.child}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      elevation: 10,
      color: Colors.black54,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        side: BorderSide(color: Colors.white70, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          splashColor: Colors.red.withAlpha(60),
          child: widget.child,
        ),
      ),
    );
  }
}

class Screen0 extends StatelessWidget {

  Screen0({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 25,
        shadowColor: Colors.white,
        titleTextStyle: TextStyle(
          fontFamily: 'Angkor',
          fontSize: 25,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/homebar.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text('P-Cycle Notes'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/home.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.red.withOpacity(1),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Physics
              MyButton(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/physics');
                  },
                  title: Center(
                    child: Text(
                      'PHYSICS',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //Maths
              MyButton(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/maths');
                  },
                  title: Center(
                    child: Text(
                      'MATHS',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //ELE
              MyButton(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/ELE');
                  },
                  title: Center(
                    child: Text(
                      'ELECTRICAL',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //Civil
              MyButton(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/civ');
                  },
                  title: Center(
                    child: Text(
                      'CIVIL',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('@ made by DEBOPAM CHOWDHURY (Param)',
                style: TextStyle(
                  color: Colors.white,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
