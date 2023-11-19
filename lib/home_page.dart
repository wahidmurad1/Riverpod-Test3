import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_page.g.dart';

// final nameProvider = Provider<String>((ref) {
//   return 'Wahid';
// });
@Riverpod(keepAlive: true)
String name(NameRef ref) {
  return 'Murad';
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(name)),
        ],
      ),
    );
  }
}
