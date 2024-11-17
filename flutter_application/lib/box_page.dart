import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class BoxPage extends StatelessWidget {
  final int boxId;

  const BoxPage({Key? key, @PathParam('boxId') required this.boxId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box $boxId Details'), // 在标题中使用 boxId
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '正在查看 Box $boxId',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.maybePopTop(); // 返回上一页
              },
              child: const Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxPageRoute extends PageRouteInfo<void> {
  const BoxPageRoute({List<PageRouteInfo>? children})
      : super(
          BoxPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'BoxPageRoute';

  static PageInfo page(int boxId) => PageInfo(name,
      builder: (context) => BoxPage(
            boxId: boxId,
          ));
}
