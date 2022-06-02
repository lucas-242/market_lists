import 'package:dartz/dartz.dart';
import 'package:market_lists/app/modules/shopping_list/domain/entities/item.dart';
import 'package:market_lists/app/modules/shopping_list/domain/errors/errors.dart';
import 'package:market_lists/app/modules/shopping_list/domain/repositories/shopping_list_repository.dart';

abstract class AddItemToList {
  Future<Either<Failure, Item>> call(Item item);
}

class AddItemToListImpl implements AddItemToList {
  final ShoppingListRepository itemRepository;
  AddItemToListImpl(this.itemRepository);

  @override
  Future<Either<Failure, Item>> call(Item item) async {
    var validateResult = _validateItem(item);
    if (validateResult != null) return validateResult;
    return await _addShoppingList(item);
  }

  Either<Failure, Item>? _validateItem(Item item) {
    if (item.shoppingListId.isEmpty ||
        !item.isValidName ||
        !item.isValidQuantity) {
      return Left(InvalidShoppingList());
    }
    return null;
  }

  Future<Either<Failure, Item>> _addShoppingList(Item item) async {
    var result = await itemRepository.addItemToList(item);
    return result;
  }
}
