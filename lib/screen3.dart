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

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);


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
        title: Text('ELECTRICAL'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ele.jpg'),
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
                    const url = 'https://drive.google.com/file/d/1HVhqkhj0mi8ozpUZH1DasmAUKrr8ZFry/view?usp=sharing';
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
                    const url = 'https://drive.google.com/drive/folders/1E4QPjXSllEtOpBnek9MahzLBpgqv8qFl?usp=sharing';
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
                    const url = 'https://drive.google.com/drive/folders/1PSHGXct0a3pr51xISeZR4qEyWkdSNh25?usp=sharing';
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
              //MODULE 4 & 5
              MyButton(
                child: ListTile(
                  onTap: () async{
                    const url = 'https://drive.google.com/drive/folders/1Bbnjv4xosT2ELMl1j6XNGRqvnulUJap7?usp=sharing';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                  },
                  title: Center(
                    child: Text(
                      'MODULE 4 & 5',
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
                    const url = 'https://drive.google.com/file/d/1VKxUPYV8HPTr772YoIscXROfn5GiCPYk/view?usp=sharing';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('@ Notes are arranged as per Google Classroom.'
                    'If confused , Not my fault :D',
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
