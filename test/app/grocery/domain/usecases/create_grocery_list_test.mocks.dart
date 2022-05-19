// Mocks generated by Mockito 5.1.0 from annotations
// in market_lists/test/app/grocery/domain/usecases/create_grocery_list_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:market_lists/app/grocery/domain/errors/errors.dart' as _i5;
import 'package:market_lists/app/grocery/grocery.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

import 'create_grocery_list_test.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [GroceryRepositoryTest].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroceryRepositoryTest extends _i1.Mock
    implements _i3.GroceryRepositoryTest {
  MockGroceryRepositoryTest() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.GroceryList>> createGroceryList(
          _i6.GroceryList? groceryList) =>
      (super.noSuchMethod(Invocation.method(#createGroceryList, [groceryList]),
          returnValue: Future<_i2.Either<_i5.Failure, _i6.GroceryList>>.value(
              _FakeEither_0<_i5.Failure, _i6.GroceryList>())) as _i4
          .Future<_i2.Either<_i5.Failure, _i6.GroceryList>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> updateGroceryList(
          _i6.GroceryList? groceryList) =>
      (super.noSuchMethod(Invocation.method(#updateGroceryList, [groceryList]),
              returnValue: Future<_i2.Either<_i5.Failure, void>>.value(
                  _FakeEither_0<_i5.Failure, void>()))
          as _i4.Future<_i2.Either<_i5.Failure, void>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, void>> deleteGroceryList(
          _i6.GroceryList? groceryList) =>
      (super.noSuchMethod(Invocation.method(#deleteGroceryList, [groceryList]),
              returnValue: Future<_i2.Either<_i5.Failure, void>>.value(
                  _FakeEither_0<_i5.Failure, void>()))
          as _i4.Future<_i2.Either<_i5.Failure, void>>);
}
