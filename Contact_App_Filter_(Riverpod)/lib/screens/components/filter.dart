import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_test/provider/provider.dart';

import '../home.dart' show white;

class FilterView extends ConsumerWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStarred = ref.watch(filterByStarred.state);
    return Dialog(
      backgroundColor: Colors.blueGrey.shade800,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Filter', style: TextStyle(color: white)),
          ),
          InkWell(
            onTap: () => isStarred.state = !isStarred.state,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(children: [
                const Text('Filter by ', style: TextStyle(color: white)),
                const Icon(Icons.star, color: white, size: 18),
                const Spacer(),
                Icon(
                    isStarred.state
                        ? Icons.check_circle_rounded
                        : Icons.check_circle_outline_outlined,
                    color: white,
                    size: 20),
              ]),
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'))
        ]),
      ),
    );
  }
}
