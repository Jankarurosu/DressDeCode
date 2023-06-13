import 'package:dressdecode/views/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool passwordsMatch = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.purple,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 30),
            _inputField("Nombre de usuario", usernameController),
            const SizedBox(height: 20),
            _inputField("Correo Electrónico", emailController),
            const SizedBox(height: 20),
            _inputField("Contraseña", passwordController, isPassword: true),
            const SizedBox(height: 20),
            _inputField("Repetir contraseña", confirmPasswordController,
                isPassword: true),
            const SizedBox(height: 30),
            _registerBtn(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.person_add, color: Colors.white, size: 120),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _registerBtn() {
    return ElevatedButton(
      onPressed: () {
        String username = usernameController.text;
        String email = emailController.text;
        String password = passwordController.text;
        String confirmPassword = confirmPasswordController.text;

        if (username.isEmpty ||
            email.isEmpty ||
            password.isEmpty ||
            confirmPassword.isEmpty) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Registro fallido'),
                content: const Text('Faltan rellenar datos.'),
                actions: [
                  TextButton(
                    child: const Text('Aceptar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        } else if (password == confirmPassword) {
          setState(() {
            passwordsMatch = true;
          });

          // Aquí puedes realizar el procesamiento de los datos y realizar el registro en tu sistema
          // Por ahora, simplemente mostraremos una ventana emergente con un mensaje de éxito.

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Registro exitoso'),
                content: const Text('¡Te has registrado exitosamente!'),
                actions: [
                  TextButton(
                    child: const Text('Aceptar'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ],
              );
            },
          );
        } else {
          setState(() {
            passwordsMatch = false;
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Registro fallido"),
                content: const Text("Las contraseñas deben coincidir"),
                actions: [
                  TextButton(
                    child: const Text("Aceptar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Registrarme",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
