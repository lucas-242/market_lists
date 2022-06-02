import 'package:dartz/dartz.dart';
import 'package:market_lists/app/modules/shopping_list/domain/entities/shopping_list.dart';
import 'package:market_lists/app/modules/shopping_list/domain/errors/errors.dart';
import 'package:market_lists/app/modules/shopping_list/domain/repositories/shopping_list_repository.dart';

abstract class ListenShoppingLists {
  Either<Failure, Stream<List<ShoppingList>>> call();
}

class ListenShoppingListsImpl implements ListenShoppingLists {
  ShoppingListRepository itemRepository;

  ListenShoppingListsImpl(this.itemRepository);

  @override
  Either<Failure, Stream<List<ShoppingList>>> call() {
    var result = itemRepository.listenShoppingLists();
    return result;
  }
}
