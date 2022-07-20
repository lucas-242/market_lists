// Mocks generated by Mockito 5.2.0 from annotations
// in easy_market/test/app/core/auth/external/firebase/firebase_auth_datasource_test.dart.
// Do not manually edit this file.

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [PhoneAuthCredential].
///
/// See the documentation for Mockito's code generation for more information.
class MockPhoneAuthCredential extends _i1.Mock
    implements _i2.PhoneAuthCredential {
  MockPhoneAuthCredential() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get providerId =>
      (super.noSuchMethod(Invocation.getter(#providerId), returnValue: '')
          as String);
  @override
  String get signInMethod =>
      (super.noSuchMethod(Invocation.getter(#signInMethod), returnValue: '')
          as String);
  @override
  Map<String, dynamic> asMap() =>
      (super.noSuchMethod(Invocation.method(#asMap, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}

/// A class which mocks [UserCredential].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserCredential extends _i1.Mock implements _i3.UserCredential {
  MockUserCredential() {
    _i1.throwOnMissingStub(this);
  }
}