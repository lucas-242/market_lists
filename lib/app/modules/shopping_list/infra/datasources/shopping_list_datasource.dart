import 'package:market_lists/app/modules/shopping_list/infra/models/item_model.dart';
import 'package:market_lists/app/modules/shopping_list/infra/models/shopping_list_model.dart';

abstract class ShoppingListDatasource {
  Future<List<ShoppingListModel>> getShoppingLists();
  Stream<List<ShoppingListModel>> listenShoppingLists();
  Future<ShoppingListModel> createShoppingList(ShoppingListModel shoppingList);
  Future<void> updateShoppingList(ShoppingListModel shoppingList);
  Future<void> deleteShoppingList(String id);
  Future<ItemModel> addItemToList(ItemModel item);
  Future<void> updateItemInList(ItemModel item);
}
