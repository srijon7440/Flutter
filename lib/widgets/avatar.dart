
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String img,txt,img2;

  const Avatar({
    super.key, required this.img,required this.txt,required this.img2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          child: Image.network(img),

        ),
        Positioned(
          left: 130,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.purple.shade200,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Text(
                txt
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          right: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
              img2
            ),
          ),
        ),
      ],
    );
  }
}
