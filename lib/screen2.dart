import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);


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
              image: AssetImage('images/appbar1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text('MATHS'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/maths.jpg'),
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
              //MODULE 1
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1jlCPM7IQAvP7yPpL8eSkCeJvdUE6mmta?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 1',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //MODULE 2
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1QitBgyiNg9PdFYWV5AiSBHi-BcOSZbOD?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 2',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //MODULE 3
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1BXA3j1yCKVvKMSTJeAhlfcXU8RQCEbZy?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 3',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //MODULE 4
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/12Kzt_oeEQ35rsTLPOjvLrFkgV242S77r?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 4',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //Module 5
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1B0IbwCiHATONEYq-qor_IcqGj2J4rUCr?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 5',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/18nAmCzbTEfRJvnPexui57lJ4snS31eUA?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'PYQ',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
