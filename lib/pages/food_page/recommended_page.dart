import 'package:flutter/material.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({super.key});

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 350,
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset("assets/images/biriani.jpg"),
        ],
      ),
    );
  }
}
