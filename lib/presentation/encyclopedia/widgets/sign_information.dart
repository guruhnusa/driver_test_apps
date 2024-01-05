import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../data/models/response/signs_response_model.dart';

class SignsInformation extends StatelessWidget {
  final SignsResponseModel model;
  const SignsInformation({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.signs.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Column(
                      children: [
                        Text(
                          model.signs[index].title,
                          style: const TextStyle(
                            color: AppColors.secondaryBlue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(model.signs[index].image),
                      ],
                    ),
                    content: Text(model.signs[index].description,
                        textAlign: TextAlign.center),
                  );
                });
          },
          child: Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.network(model.signs[index].image),
              title: Text(
                model.signs[index].title,
                style: const TextStyle(
                  color: AppColors.secondaryBlue,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
