import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "JA",
      "last_name": "López",
      "email": "jose@gmail.com",
      "passwd": "NOTELODIGO152",
      "role": "Admin"
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        //Sirve para hacer scroll
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  helperText: "Nombre del Usuario",
                  hintText: "Escriba el nombre del usuario",
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido",
                  helperText: "Apellido del Usuario",
                  hintText: "Escriba el apellido de usuario",
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Correo Electronico",
                  helperText: "Escriba el correo electronio",
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Contraseña",
                  helperText: "Escriba la contraseña",
                  hintText: "Contraseña",
                  isPassword: true,
                  formProperty: 'passwd',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                    value: "Admin",
                    items: const [
                      DropdownMenuItem(value: "Admin", child: Text("Admin ")),
                      DropdownMenuItem(
                          value: "SuperUser", child: Text("SuperUser ")),
                      DropdownMenuItem(
                          value: "Developer", child: Text("Developer ")),
                      DropdownMenuItem(
                          value: "Jr. Developer", child: Text("Jr. Developer")),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues["role"] = value ?? "Admin";
                    }),
                ElevatedButton(
                    onPressed: () {
                      //Al hacer click en el botón
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); //Quitar el teclado
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no valido");
                        return; //Si no es valido no hagas nada
                      } else {
                        print(formValues);
                      }
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text("Guardar")),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
