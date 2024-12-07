import 'package:flutter/material.dart';
import 'package:test_sl/model/motels.dart';
import 'package:test_sl/network/network_request.dart';
import 'package:test_sl/widgets/noti_room_box.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        scrolledUnderElevation: 7,
        elevation: 7,
        title: const Text('Student Life',
            style: TextStyle(
              fontSize: 32,
            ),
            textAlign: TextAlign.right),
        centerTitle: true,
        actions: [
          IconButton(
            padding: const EdgeInsets.all(2.67),
            icon: Image.asset('assets/icons/menu_icon.png',
                width: 26.67, height: 26.67),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          padding: const EdgeInsets.all(2.67),
          icon:
              Image.asset('assets/icons/Icon.png', width: 21.82, height: 21.82),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Top phòng được yêu thích',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        TextButton(
                          onPressed: () => {},
                          child: const Row(
                            children: [
                              Text(
                                'Xem tất cả',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff648DDB)),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: Color(0xff648DDB)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder<List<Motels>>(
                          future: NetWorkRequest.getPersonalInfo(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else if (snapshot.hasData) {
                              final motels = snapshot.data!;
                              return Row(
                                children: motels.map((motel) {
                                  return NotiRoomBox.notiRoomBox(
                                    'assets/images/image.png',
                                    motel.Name,
                                    motel.Price.toString(),
                                    motel.Address,
                                  );
                                }).toList(),
                              );
                            } else {
                              return const Text('No data');
                            }
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Nhà trọ tương tự Quận Tân phú',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Xem tất cả',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff648DDB)),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: Color(0xff648DDB)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder<List<Motels>>(
                            future: NetWorkRequest.getPersonalInfo(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final motels = snapshot.data!;
                                return Row(
                                  children: motels.map((motel) {
                                    return NotiRoomBox.notiRoomBox(
                                      'assets/images/image.png',
                                      motel.Name,
                                      motel.Price.toString(),
                                      motel.Address,
                                    );
                                  }).toList(),
                                );
                              } else {
                                return const Text('No data');
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Tin khác',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Xem tất cả',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff648DDB)),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: Color(0xff648DDB)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder<List<Motels>>(
                            future: NetWorkRequest.getPersonalInfo(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final motels = snapshot.data!;
                                return Row(
                                  children: motels.map((motel) {
                                    return NotiRoomBox.notiRoomBox(
                                      'assets/images/image.png',
                                      motel.Name,
                                      motel.Price.toString(),
                                      motel.Address,
                                    );
                                  }).toList(),
                                );
                              } else {
                                return const Text('No data');
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 270,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Tin đăng tương tự',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Xem tất cả',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff648DDB)),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: Color(0xff648DDB)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FutureBuilder<List<Motels>>(
                            future: NetWorkRequest.getPersonalInfo(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                final motels = snapshot.data!;
                                return Row(
                                  children: motels.map((motel) {
                                    return NotiRoomBox.notiRoomBox(
                                      'assets/images/image.png',
                                      motel.Name,
                                      motel.Price.toString(),
                                      motel.Address,
                                    );
                                  }).toList(),
                                );
                              } else {
                                return const Text('No data');
                              }
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 170,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cyber Skills',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFF8800))),
                    const Text(
                      'Tìm kiếm bất động sản trến ứng dụng Student Life',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 143,
                            height: 45,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/apple-icon.png',
                                    width: 35, height: 35),
                                const Column(children: [
                                  Text('Download on the',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black)),
                                  Text('App Store',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))
                                ])
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 143,
                            height: 45,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/image_56.png',
                                    width: 35, height: 35),
                                const Column(
                                  children: [
                                    Text(
                                      'ANDROID APP ON',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    Text(
                                      'App Store',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
