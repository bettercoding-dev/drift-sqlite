import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_storage_sqlite_drift/cake/state/cake_controller.dart';

class CakePage extends ConsumerWidget {
  const CakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cakes = ref.watch(cakeControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite Cakes'),
      ),
      body: cakes.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, trace) => Center(child: Text(error.toString())),
          data: (cakes) => ListView.builder(
            itemCount: cakes.length,
            itemBuilder: (context, index) {
              final cake = cakes[index];
              return ListTile(
                title: Text(cake.name),
                subtitle: Text('Yummyness: ${cake.yummyness}'),
                leading: IconButton(
                  icon: const Icon(Icons.thumb_up),
                  onPressed: () =>
                      ref.read(cakeControllerProvider.notifier).edit(cake),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => ref
                      .read(cakeControllerProvider.notifier)
                      .delete(cake),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => ref.read(cakeControllerProvider.notifier).add(),
      ),
    );
  }
}
