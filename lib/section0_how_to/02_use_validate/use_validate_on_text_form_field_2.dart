import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class UseValidateOnTextFormFieldPart2 extends StatefulWidget {
  const UseValidateOnTextFormFieldPart2({Key? key}) : super(key: key);

  @override
  _UseValidateOnTextFormFieldPart2State createState() =>
      _UseValidateOnTextFormFieldPart2State();
}

class _UseValidateOnTextFormFieldPart2State
    extends State<UseValidateOnTextFormFieldPart2> {
  /// -------------------------

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confPasswordController = TextEditingController();

  /// -------------------------

  bool obscure = true;
  bool obscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 180.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      customField(
                        validator: RequiredValidator(errorText: "Required"),
                        controller: _nameController,
                        labelText: 'Name',
                      ),
                      customField(
                        validator: MultiValidator(
                          [
                            RequiredValidator(errorText: "Required"),
                            EmailValidator(
                                errorText:
                                    "Please enter a valid email address"),
                          ],
                        ),
                        controller: _emailController,
                        labelText: 'Email',
                      ),
                      customField(
                        validator: MultiValidator(
                          [
                            RequiredValidator(errorText: "Required"),
                            MinLengthValidator(6,
                                errorText:
                                    "Password must contain at least 6 characters"),
                            MaxLengthValidator(15,
                                errorText:
                                    "Password cannot be more 15 characters"),
                            PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                errorText:
                                    "Password must have at least one special character"),
                          ],
                        ),
                        controller: _passwordController,
                        obscureText: obscure,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: obscure
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                        ),
                      ),
                      customField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Required";
                          }
                          return MatchValidator(
                                  errorText: "Passwords don't match")
                              .validateMatch(val, _passwordController.text);
                        },
                        controller: _confPasswordController,
                        obscureText: obscure2,
                        labelText: 'Re-type Password',
                        suffixIcon: IconButton(
                          icon: obscure2
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                          onPressed: () {
                            setState(() {
                              obscure2 = !obscure2;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.white,
                                  content: Text(
                                    'Validation Successful',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.0, vertical: 10),
                            child: Text("Submit"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding customField({
    required String? Function(String?)? validator,
    required TextEditingController? controller,
    required String labelText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 30.0, right: 30.0, bottom: 20.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.black,
        style: const TextStyle(),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
