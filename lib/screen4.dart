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

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);


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
        title: Text('CIVIL'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/civil.jpg'),
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
                    const url = 'https://drive.google.com/file/d/1k-AJgWNYtIQXbl2mKXdVzoM1sat81mmV/view?usp=sharing';
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
                    const url = 'https://drive.google.com/drive/folders/1Db8yuKsmVUY1j4ibHAbj2bh98PhVg4rL?usp=sharing';
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
                    const url = 'https://drive.google.com/drive/folders/1R1jerm9f9h8a7JzyFTkqbuOQBiOkKliL?usp=sharing';
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
                    const url = 'https://drive.google.com/file/d/1vX5QFb-v06UycdSMFx_fWHNZ4q1iD9YQ/view?usp=sharing';
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
              //MODULE 5
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/file/d/1ngnRpHG_AdFjOltk357Jjhzr5IyRYswU/view?usp=sharing';
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
