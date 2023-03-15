import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //     borderRadius:
                  //         BorderRadiusDirectional.all(Radius.circular(25))),
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xff406A52),
                  child:Image(image: AssetImage("assets/images/img.png"),fit: BoxFit.fill,),

              ),),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Foodapio",
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff406A52),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "login to your account",
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Sora',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                      child: Container(
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(46)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff406A52).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: MaterialButton(
                            color: Color(0xffECECEC),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SingInScreen()));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                      child: Container(
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(46)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff406A52).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: MaterialButton(
                            color: Color(0xffECECEC),
                              onPressed: () {

                              },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ],
                )),
            Text(
              "Problems with account?",
              style: TextStyle(fontSize: 10, color: Color(0xff406A52)),
            ),
          ],
        ),
      ),
    );
  }
}

class SingInScreen extends StatefulWidget {
   SingInScreen({Key? key}) : super(key: key);

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
 SharedPreferences? pref;
 static const NAME_KEY="name";
 var nameControler= TextEditingController();

 Future<void> getSharePref()async{
   pref = await SharedPreferences.getInstance();
   getName();
 }
 Future<void> setName(String name)async{
   try{
   await pref?.setString(NAME_KEY, name);
   print("successfully saved $name");}
 catch(error){
   print("Erorr ${error.toString()}");
 }}
void getName() {
   String? name =  pref?.getString("name") ;
   nameControler.text=name ?? "Unknow";
 }

 @override
 void initState(){
   getSharePref();
  // getName();
   print("object");
   super.initState();
 }
 //dd3er
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      color: Color(0xff406A52),
                      child:Image(image: AssetImage("assets/images/img.png"),fit: BoxFit.fill,),

                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          "Foodapio",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xff406A52),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color(0xff406A52),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Enter Your Email And Password",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Sora',
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                          child: Container(
                            width: 253,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(46)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff406A52).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset:
                                  Offset(0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text(
                                  "  Email",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffa6a6a6)),
                                ),
                                filled: true,
                                fillColor: Color(0xffececec),
                                hintText: "Enter Your Email",
                                border: InputBorder.none,
                                // prefixIcon: Icon(Icons.email),
                              ),
                              // controller: emailController,
                              onFieldSubmitted: (name)=>setName(name),

                              controller: nameControler,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: (email) {
                                if (email?.isEmpty == true) {
                                  return "Email can't be empty";
                                }
                              },
                            ),
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //     label: Text(
                            //       "  Email",
                            //       style: TextStyle(
                            //           fontSize: 12, color: Color(0xffa6a6a6)),
                            //     ),
                            //     filled: true,
                             //     fillColor: Color(0xffececec),
                            //     hintText: "Enter Your Email",
                            //     border: InputBorder.none,
                            //     // prefixIcon: Icon(Icons.email),
                            //   ),
                            //   // controller: emailController,
                            //   keyboardType: TextInputType.emailAddress,
                            //   textInputAction: TextInputAction.next,
                            //   validator: (email) {
                            //     if (email?.isEmpty == true) {
                            //       return "Email can't be empty";
                            //     }
                            //   },
                            // ),

                            // child: MaterialButton(
                            //   color: Color(0xffECECEC),
                            //   onPressed: () {},
                            //   child: Text(
                            //     "Sign in",
                            //     style: TextStyle(
                            //         fontSize: 16, fontWeight: FontWeight.bold),
                            //   ),
                            // )
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                          child: Container(
                            width: 253,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(46)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff406A52).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset:
                                  Offset(0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text(
                                  "  Password",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffa6a6a6)),
                                ),
                                filled: true,
                                fillColor: Color(0xffececec),
                                hintText: "Enter Your Email",
                                border: InputBorder.none,
                                // prefixIcon: Icon(Icons.email),
                              ),
                              // controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: (email) {
                                if (email?.isEmpty == true) {
                                  return "Email can't be empty";
                                }
                              },
                            ),

                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                            height: 64,
                            width: 329,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(46)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff406A52).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset:
                                  Offset(0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: MaterialButton(
                              color: Color(0xffECECEC),
                              onPressed: getName,
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    )),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text("Problems with account?",style: TextStyle(fontSize: 10,color: Color(0xff406A52)),),
             ) ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("test App"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.amberAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello world",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                  onPressed: () {
                    print("button presed");
                  },
                  child: Text(
                    "click here",
                    style: TextStyle(
                        fontSize: (22), fontWeight: FontWeight.normal),
                  ),
                  color: Colors.red)
            ],
          ),
        ),
      ),
    );
  }
}

class SecScreen extends StatelessWidget {
  SecScreen({Key? key}) : super(key: key);
  List<String> moons = ["3", "4", "5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("test App"),
          // backgroundColor: Colors.red,
        ),
        body: Container(
            child: ListView.separated(
          itemBuilder: (context, index) => moonCard(moons[index]),
          itemCount: moons.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8,
            );
          },
        )));
  }
}

Widget moonCard(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(25))),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Image(image: AssetImage("assets/images/Lion.jpg")),
        Container(
            color: Colors.brown.withOpacity(0.7),
            width: double.infinity,
            child: Text(
              "Moon $text",
              style: TextStyle(color: Colors.white, fontSize: (18)),
              textAlign: TextAlign.center,
            ))
      ]),
    ),
  );
}

class TestClass extends StatelessWidget {
  TestClass({Key? key}) : super(key: key);
  List<String> boxs = [
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "99"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "testApp",
              style: TextStyle(fontSize: (22)),
              textAlign: TextAlign.center,
            ),
          ),
          body: Container(
              child: ListView.separated(
            itemBuilder: (context, index) => ButText(boxs[index]),
            itemCount: boxs.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 8,
              );
            },
          ))),
    );
  }
}

Widget ButText(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello Word!!",
            style: TextStyle(fontSize: (22)),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.green,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "click here $text",
                  style: TextStyle(color: Colors.white, fontSize: (16)),
                ),
                Icon(
                  Icons.icecream,
                  size: 24.0,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(25))),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg")),
              Container(
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.5),
                  child: Text(
                    "any thing ",
                    style: TextStyle(fontSize: (18), color: Colors.white),
                    textAlign: TextAlign.center,
                  ))
            ]),
          ),
        ],
      ),
    ),
  );
}

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                x++;
                setState(() {});
              },
              child: Text("+"),
            ),
            Text("  $x  "),
            ElevatedButton(
                onPressed: () {
                  --x;
                  setState(() {});
                },
                child: Text("-"))
          ],
        ),
      ),
    );
  }
}

class LoginTest extends StatefulWidget {
  LoginTest({Key? key}) : super(key: key);

  @override
  State<LoginTest> createState() => _LoginTestState();
}

class _LoginTestState extends State<LoginTest> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool passordState = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Login Page")),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      Text(" Setting", style: TextStyle(fontSize: 22))
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [Text(" About ", style: TextStyle(fontSize: 22))],
                  ),
                )
              ];
            },
            onSelected: (value) {
              if (value == 1) {
                print("valu 1");
              }
              if (value == 2) {
                print("valu 2");
              }
            },
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: "Enter Your Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (email) {
                  if (email?.isEmpty == true) {
                    return "Email can't be empty";
                  }
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Enter Your Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        passordState = !passordState;
                        setState(() {});
                      },
                      icon: passordState
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  border: OutlineInputBorder(),
                ),
                controller: passwordController,
                obscureText: passordState,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password?.isEmpty == true) {
                    return "Password can't be empty";
                  }
                },
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        print("the email is ${emailController.text}");
                        print("the password  is $passwordController");
                        // formKey.currentState?.validate();
                        if (formKey.currentState?.validate() == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecScreen()));
                        }
                      },
                      child: Text(
                        "Login in",
                        style: TextStyle(fontSize: 16),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
