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

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);


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
        title: Text('PHYSICS'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/physics.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.red.withOpacity(1),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              //MODULE 1
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/file/d/1D0ZgwnsVtns4yeL_trBkgzfHSsm4K-sZ/view?usp=sharing';
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
                    const url = 'https://drive.google.com/file/d/1L3OK5Ld0PzgCxcrPayRJuJ8hqTScXpfi/view?usp=sharing';
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
                    const url = 'https://drive.google.com/drive/folders/1c8JfNEqlY7T5nFJtTjJzrkjc2MXNF1em?usp=sharing';
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
                    const url = 'https://drive.google.com/file/d/10fr-V3NBUeJAzC35zRqZgw3_fBzF2gE_/view?usp=sharing';
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
                    const url = 'https://drive.google.com/file/d/1c6iM5ZaA0zIGd1VNC7CtwdQbG-J-JTSQ/view?usp=sharing';
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
              //Imp Questions
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1hji1dXtxrn6z38EDpHFhbsd7VYAyMoQQ?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'IMP Questions',
                      style: TextStyle(
                          fontFamily: 'SirinStencil',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Center(
                    child: Text('Modulewise arranged with Answers',
                    style: TextStyle(color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 11),),
                  ),
                ),
              ),
              //Numericals
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1t9TC7FJhQTvNozTmKh80CnR18H44r9Uy?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'Numericals',
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
