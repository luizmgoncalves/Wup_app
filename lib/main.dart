import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wake up",
      home: Tela0()
    )
  );
}

class Tela0 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text("Wake up 1"),
      ),
      body: Center(
        child: Container(
        alignment: Alignment.center,
        width: 360,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: ()=>{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => Tela1()),
                        )
                      }, 
              style: const ButtonStyle(padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(20))),
              child: const Text("Motorista", textScaleFactor: 2),
            ),
            ElevatedButton(
              onPressed: ()=>{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => Tela1()),
                        )
                      }, 
              style: const ButtonStyle(padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(20))),
              child: const Text("Empresa", textScaleFactor: 2),
            )
          ]
          ),
      ),
    )
    );
  }
}

class Tela1 extends StatefulWidget{
  @override
  State<Tela1> createState() {
    return _Tela1State();
  }

}

class _Tela1State extends State<Tela1> {
  late TextEditingController _controller_username;
  late TextEditingController _controller_pass;

  String username="";
  String password="";

  @override
  void initState() {
    super.initState();
    _controller_username = TextEditingController();
    _controller_pass = TextEditingController();
  }

  @override
  void dispose() {
    _controller_username.dispose();
    _controller_pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wake up 1"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: 500,
            height: 350,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Usuário: ", textScaleFactor: 2,),
                TextField(
                  controller: _controller_username,
                  onSubmitted: (String text){
                      submit(context);
                  },
                  onChanged: (String text){
                    username = text;
                    print(text);
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "username"
                    ),
                  ),
                const Text("Senha: ", textScaleFactor: 2,),
                TextField(
                    obscureText: true,
                    controller: _controller_pass,
                    onChanged: (String pwd){
                      password = pwd;
                      print(pwd);
                    },
                    onSubmitted: (String text){
                      submit(context);
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password"
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      submit(context);
                      }, 
                    child: const Text("Submit")
                  )
              ],

            )
          )
        )
      );
  }

  void submit(BuildContext context){
    if (username=="Cadu" && password=="123"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => Tela2()),
        );
     }
  }
}


class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Wake up 1"),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 120, 120, 120),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(IconData(0xeecb, fontFamily: 'MaterialIcons')),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Color.fromARGB(255, 179, 179, 179),
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(30))
              
            ),
            child: FittedBox(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.person, size: 100),
                const Text("Carlos Eduardo Capanema Mazon Jardins", style: TextStyle(fontSize: 20)),
                Container(width: 30,)
              ]),
            )
            ,)
        ),
        Container(
          color: Color.fromARGB(255, 144, 144, 144),
          alignment: Alignment.topCenter,
          child: Container(
            width: 500,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(backgroundColor: Color.fromARGB(255, 240, 255, 81), radius: 40,),
                    Container(width: 30,),
                    const Flexible(
                      child: Text("Alerta\n2:57 AM: Você foi pego com sono. Tome cuidado. Se necessário, pare!", style: TextStyle(fontSize: 20)),
                    )
                  ]
                  ),
                  Container(height: 30,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(backgroundColor: Color.fromARGB(255, 250, 118, 61), radius: 40,),
                    Container(width: 30,),
                    const Flexible(
                      child: Text("Empresa\n2:57 AM: Você foi pego com sono novamente. Tome cuidado. Se necessário, pare!", style: TextStyle(fontSize: 20)),
                    )
                  ]),
                  Container(height: 30,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(backgroundColor: Color.fromARGB(255, 251, 93, 93), radius: 40,),
                    Container(width: 30,),
                    const Flexible(
                      child: Text("Empresa\n2:57 AM: Você foi pego com sono mais uma vez. Ache um lugar seguro, pare o veículo e descanse!", style: TextStyle(fontSize: 20)),
                    )
                  ]
                  )

            ],)
            )
        ),
        Container(
          color: Color.fromARGB(255, 179, 179, 179),
          alignment: Alignment.topCenter,
          child: Container(
            width: 500,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(backgroundColor: Color.fromARGB(255, 129, 57, 210), radius: 40, child: Icon(Icons.person, size: 40,),),
                    Container(width: 30,),
                    const Flexible(
                      child: Text("Tia Lurdes\n2:57 AM: ATENÇÃO! Você está com muito sono. Pare e descanse!", style: TextStyle(fontSize: 20)),
                    )
                  ]),
                  Container(height: 30,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(backgroundColor: Color.fromARGB(255, 47, 126, 108), radius: 40, child: Icon(Icons.person, size: 40,),),
                    Container(width: 30,),
                    const Flexible(
                      child: Text("Empresa\n3:51 AM: ATENÇÃO! Fomos notificados que seu nível de sono está além do recomendado. Pare e descanse!", style: TextStyle(fontSize: 20)),
                    )
                  ])
            ],)
            )
        ),
      ][currentPageIndex],
    );
  }
}
