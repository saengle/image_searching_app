import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          '이미지 검색 앱',
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search))),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://img.vogue.co.kr/vogue/2022/05/style_627a16c2b312b.jpeg'),
                      )
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
