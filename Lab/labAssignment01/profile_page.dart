import 'package:flutter/material.dart';
import 'package:project_test/widgets/input_feild.dart';
import 'package:project_test/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passController2 = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  String phone = "";
  String pass = "";
  String? errorpass;
  String fname = "";
  String lname = "";
  String? errorMsg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProfilePage"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 600,
          width: 400,
          child: Card(
            color: const Color.fromARGB(255, 172, 193, 204),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // TextFormField(
                  //   keyboardType: TextInputType.visiblePassword,
                  //   // onChanged: (value) {
                  //   //   name = nameController.text;
                  //   //   setState(() {});
                  //   // },
                  //   controller: nameController,

                  //   ///obscureText: true,
                  //   onFieldSubmitted: (value) {
                  //     setState(() {
                  //       errorMsg = null;
                  //       if (nameController.text.isEmpty) {
                  //         errorMsg = "Field is empty!";
                  //       } else {
                  //         name = nameController.text;
                  //         // setState(() {});
                  //       }
                  //     });
                  //   },
                  //   decoration: InputDecoration(
                  //     errorText: errorMsg,
                  //     labelText: "Name",
                  //     hintText: "Enter Name...",
                  //     prefixIcon: Icon(Icons.person),
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.green),
                  //       borderRadius: BorderRadius.all(Radius.circular(50)),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: inputFeild(
                          controller: fnameController,
                          keyboardType: TextInputType.visiblePassword,
                          label: "First Name",
                          hint: "Enter Name",
                          icon: Icons.person,
                          errorText: errorMsg,
                        ),
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: inputFeild(
                          controller: lnameController,
                          keyboardType: TextInputType.visiblePassword,
                          label: "Last name",
                          hint: "Enter your last name",
                          icon: Icons.person_2,
                          errorText: errorMsg,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _dob,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: "Date of Birth",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    onTap: () async {
                      DateTime? pickDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2000),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (pickDate != null) {
                        setState(() {
                          _dob.text =
                              "${pickDate.day}/${pickDate.month}/${pickDate.year}";
                        });
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  inputFeild(
                    controller: phoneNumber,
                    keyboardType: TextInputType.number,
                    label: "Phone Number",
                    hint: "Enter Your Number",
                    icon: Icons.dialpad_sharp,
                    errorText: errorpass,
                  ),
                  SizedBox(height: 20),
                  inputFeild(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    hint: "Enter Your Email",
                    icon: Icons.email,
                    errorText: errorpass,
                  ),
                  SizedBox(height: 20),
                  inputFeild(
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Password",
                    hint: "Enter Password",
                    icon: Icons.lock,
                    errorText: errorpass,
                  ),
                  SizedBox(height: 20),
                  inputFeild(
                    controller: passController2,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Re-write Password",
                    hint: "Enter Password Again",
                    icon: Icons.lock,
                    errorText: errorpass,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        errorMsg = null;
                        if (fnameController.text.isEmpty) {
                          errorMsg = "Field is empty";
                        } else {
                          fname = fnameController.text;
                        }
                        if (lnameController.text.isEmpty) {
                          errorMsg = "Field is empty";
                        } else {
                          lname = lnameController.text;
                        }
                        if (_dob.text.isEmpty) {
                          errorMsg = "Field is empty";
                        } else {
                          _dob = _dob.text as TextEditingController;
                        }
                      });
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 20),
                  Text("Name is: $fname $lname"),
                  SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text("Homepage"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
