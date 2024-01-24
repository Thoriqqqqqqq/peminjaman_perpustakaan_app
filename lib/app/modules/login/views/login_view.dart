import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_rpl_b/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                        hintText: "Masukkan username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                        hintText: "Masukkan password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Obx(
                      () => controller.loadinglogin.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("Login")),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun ?',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF61677D),
                          letterSpacing: -0.3,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(
                        width: 5.0,
                      ),

                      GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF080ba1),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
