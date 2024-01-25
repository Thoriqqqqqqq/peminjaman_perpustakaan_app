import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BookView'),
          centerTitle: true,
        ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("${state[index].book?.judul}"),
              subtitle: Text("Dipinjam ${state[index].tanggalPinjam}"),
              // trailing: SizedBox(
              //   child: ElevatedButton(
              //     onPressed: (){
              //       Get.toNamed(Routes.ADD_PEMINJAMAN, parameters: {
              //         'id': (state[index].id??0).toString(),
              //         'judul': state[index].judul ??"-"
              //       });
              //     },
              //     child: Text('Pinjam'),
              //   ),
              // ),
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          },
        ))
    );
  }
}
