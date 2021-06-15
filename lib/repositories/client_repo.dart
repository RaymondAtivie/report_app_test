import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:report_app/faker/my_faker.dart';
import 'package:report_app/models/client.dart';

class ClientRepo {
  Future<List<Client>> getAll() async {
    final data = MyFaker().clients(50);

    try {
      final c = data.map((c) => Client.fromMap(c)).toList();
      return c;
    } catch (e, st) {
      print(st);
      rethrow;
    }
  }
}

final clientRepoProvider = Provider<ClientRepo>((ref) {
  return ClientRepo();
});

final clientsProvider = FutureProvider<List<Client>>((ref) {
  return ref.watch(clientRepoProvider).getAll();
});

final searchTermProvider = StateProvider<String>((ref) => "");

final clientListProvider =
    StateProvider.family<List<Client>, ClientStatus>((ref, clientStatus) {
  final clients = ref.watch(clientsProvider);
  final search = ref.watch(searchTermProvider).state;

  return clients.when<List<Client>>(
    data: (clients) {
      return clients
          .where((c) => c.name.toLowerCase().contains(search.toLowerCase()))
          .toList()
          .where((c) => c.status == clientStatus)
          .toList();
    },
    loading: () => [],
    error: (_, __) {
      return [];
    },
  );
});
