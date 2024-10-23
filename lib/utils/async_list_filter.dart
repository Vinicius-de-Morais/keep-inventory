Future<List<T>> asyncListFilter<T>(
    Iterable<T> items, Future<bool> Function(T) filter) async {
  List<T> itemsOk = List.empty(growable: true);

  for (var item in items) {
    if (await filter(item)) {
      itemsOk.add(item);
    }
  }

  return itemsOk;
}
