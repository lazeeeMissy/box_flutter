
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/MyGrid.dart';
import 'package:flutter_application/app_router.dart';
import 'package:flutter_application/app_router.gr.dart';
import 'package:flutter_application/box_num_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref){
    final boxCount = ref.watch(boxProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [//加和减按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  ElevatedButton(onPressed: (){
                    ref.read(boxProvider.notifier).state++;
                  }, child: Text('加号按钮')),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                    if(boxCount>0){
                      ref.read(boxProvider.notifier).state--;
                    }
                  }, child: Text('减号按钮')),
            ],),
            SizedBox(height: 20,),
           Expanded(
            child: MyGrid(
              items: List.generate(boxCount, (index) => index + 1),
              onBoxTap: (id) {
                print('现在点击的是：$id');
                context.router.push(BoxPageRoute(boxId: id)); // 跳转到盒子详情页
              },
            ),
           ),
        ],
      ),
    );
  }
}


class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

}


