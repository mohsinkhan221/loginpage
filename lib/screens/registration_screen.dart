import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
   //our formkey
   final formKey = GlobalKey<FormState>();
   //editing controller
   final firstNameEditingController = new TextEditingController();
   final secondNameEditingController = new TextEditingController();
   final emailEditingController = new TextEditingController();
   final passwordEditingController = new TextEditingController();
   final confirmpasswordEditingController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    //first name 
       final firstnamefield = TextFormField(
autofocus: false,
controller: firstNameEditingController,
keyboardType: TextInputType.name,

//validator: {} {},
onSaved: (Value){
  firstNameEditingController.text = Value!;
},
   textInputAction:TextInputAction.next,
   decoration: InputDecoration(
     prefixIcon: Icon(Icons.account_circle),
     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     hintText: "Firstname",
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
   )

    );
    //second  name fiend
       final secondnamefield = TextFormField(
autofocus: false,
controller: secondNameEditingController,
keyboardType: TextInputType.name,
//validator: {} {},
onSaved: (Value){
  secondNameEditingController.text = Value!;
},
   textInputAction:TextInputAction.next,
   decoration: InputDecoration(
     prefixIcon: Icon(Icons.account_circle),
     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     hintText: "lastname",
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
   )

    );
    //email field
     final emailField = TextFormField(
autofocus: false,
controller: emailEditingController,
keyboardType: TextInputType.emailAddress,
//validator: {} {},
onSaved: (Value){
  emailEditingController.text = Value!;
},
   textInputAction:TextInputAction.next,
   decoration: InputDecoration(
     prefixIcon: Icon(Icons.mail),
     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     hintText: "Email",
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
   )

    );

        //password field
     final passwordfield = TextFormField(
autofocus: false,
controller:passwordEditingController,
obscureText: true,
//validator: {} {},
onSaved: (Value){
  passwordEditingController.text = Value!;
},
   textInputAction:TextInputAction.next,
   decoration: InputDecoration(
     prefixIcon: Icon(Icons.vpn_key),
     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     hintText: "Password",
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
   )

    );

            //confirm password field
     final confirmpasswordfield = TextFormField(
autofocus: false,
controller:confirmpasswordEditingController,
obscureText: true,
//validator: {} {},
onSaved: (Value){
  confirmpasswordEditingController.text = Value!;
},
   textInputAction:TextInputAction.done,
   decoration: InputDecoration(
     prefixIcon: Icon(Icons.vpn_key),
     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     hintText: "Confirm Password",
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
   )

    );
     final signUpButton = Material(
      
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,

    child: MaterialButton(
      
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () {},
    child: Text("SignUp",textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20,color: Colors.white,
    fontWeight: FontWeight.bold,),),),

    );
    
    




    return
    
    
     Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
leading: IconButton(
  icon: Icon(Icons.arrow_back, color: Colors.red,),
  onPressed: () {
    Navigator.of(context).pop();
  },
),

      ),
      body: Center(child: 
      SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: formKey,
              child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,


              children: <Widget> [

                        SizedBox(
                          height: 100,
                          child: Image.asset("assets/brain.jpg",
                          fit: BoxFit.contain,),

                        ),
                         SizedBox(height: 20),
                firstnamefield,
                SizedBox(height: 20),
                secondnamefield,
                SizedBox(height: 20),
                emailField,
                SizedBox(height: 20),
                passwordfield,
                SizedBox(height: 20),
                confirmpasswordfield,
                SizedBox(height: 20),
                signUpButton,
                SizedBox(height: 15,),
                
              ],
            ),),
          ),
        ),
      ),),
    );
  }
}