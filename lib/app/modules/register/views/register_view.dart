import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
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
                    controller: controller.namaController,
                    decoration: InputDecoration(
                        hintText: "Masukkan nama",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),


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
                    controller: controller.teleponController,
                    decoration: InputDecoration(
                        hintText: "Masukkan telp",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "telp tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    controller: controller.alamatController,
                    decoration: InputDecoration(
                        hintText: "Masukkan alamat",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "alamat tidak boleh kosong";
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
                      () => controller.loadingregister.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.register();
                      },
                      child: Text("Daftar")),
                )
              ],
            ),
          )),
    );
  }
}
