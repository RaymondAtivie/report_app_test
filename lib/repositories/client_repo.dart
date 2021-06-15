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

final paidClientsProvider = StateProvider<List<Client>>((ref) {
  final clients = ref.watch(clientsProvider);

  return clients.when<List<Client>>(
    data: (clients) {
      return clients.where((c) => c.status == ClientStatus.paid).toList();
    },
    loading: () => [],
    error: (_, __) {
      return [];
    },
  );
});

final unpaidClientsProvider = Provider<List<Client>>((ref) {
  final clients = ref.watch(clientsProvider);
  return clients.when(
    data: (clients) =>
        clients.where((c) => c.status == ClientStatus.unpaid).toList(),
    loading: () => [],
    error: (_, __) => [],
  );
});

final pendingClientsProvider = Provider<List<Client>>((ref) {
  final clients = ref.watch(clientsProvider);
  return clients.when(
    data: (clients) =>
        clients.where((c) => c.status == ClientStatus.pending).toList(),
    loading: () => [],
    error: (_, __) {
      print(__);
      return [];
    },
  );
});
