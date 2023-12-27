
import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../data/datasources/local/auth_local_datasource.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        child: Image.network(
          'https://i.pravatar.cc/200',
          width: 55.0,
          height: 55.0,
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Halo'),
          const SizedBox(
            width: 5,
          ),
          Image(
            image: AssetImage(Assets.images.icons.iconhand.path),
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
        ],
      ),
      subtitle: FutureBuilder(
          future: AuthLocalDataSource().getAuthData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.user.name);
            } else {
              return const SizedBox();
            }
          }),
    );
  }
}
