import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPeminjamanView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  '${Get.parameters['judul'].toString().toUpperCase()}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    controller: controller.tanggalPinjamController,
                    decoration: InputDecoration(
                        hintText: "Masukkan tanggal pinjam",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "tanggal pinjam tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    controller: controller.tanggalKembaliController,
                    decoration: InputDecoration(
                        hintText: "Masukkan tanggal kembali",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "tanggal kembali tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Obx(
                      () => controller.loadingpinjam.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.pinjam();
                      },
                      child: Text("pinjam")),
                )
              ],
            ),
          )),
    );
  }
}
