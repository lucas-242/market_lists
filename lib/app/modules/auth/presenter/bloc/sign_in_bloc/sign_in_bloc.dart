import 'package:bloc/bloc.dart';
import 'package:market_lists/app/modules/auth/domain/entities/sign_in_credentials.dart';
import 'package:market_lists/app/modules/auth/domain/usecases/sign_in_with_email.dart';
import 'package:market_lists/app/modules/auth/domain/usecases/sign_in_with_phone.dart';
import 'package:market_lists/app/shared/utils/base_state_status.dart';
import 'package:market_lists/app/shared/utils/form_validator.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> with FormValidator {
  final SignInWithEmail signInWithEmailUsecase;
  final SignInWithPhone signInWithPhoneUsecase;

  SignInBloc(
    this.signInWithEmailUsecase,
    this.signInWithPhoneUsecase,
  ) : super(const SignInState(status: BaseStateStatus.initial)) {
    on<ChangeEmailEvent>(_onChangeEmail);
    on<ChangePasswordEvent>(_onChangePassword);
    on<ChangePasswordVisibilyEvent>(_onChangePasswordVisibility);
    on<SignInWithEmailEvent>(_onSignInWithEmail);
    on<SignInWithPhoneEvent>(_onSignInPhone);
  }

  void _onChangeEmail(ChangeEmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onChangePassword(ChangePasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onChangePasswordVisibility(
      ChangePasswordVisibilyEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future<void> _onSignInWithEmail(
      SignInWithEmailEvent event, Emitter<SignInState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));

    final result = await signInWithEmailUsecase(
      SignInCredentials.withEmailAndPassword(
        email: state.email!,
        password: state.password!,
      ),
    );

    result.fold(
      (l) => emit(state.copyWith(
          status: BaseStateStatus.error, callbackMessage: l.message)),
      (r) => emit(const SignInState(status: BaseStateStatus.success)),
    );
  }

  Future<void> _onSignInPhone(
      SignInWithPhoneEvent event, Emitter<SignInState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    final result = await signInWithPhoneUsecase(
      SignInCredentials.withPhone(phone: state.phone!),
    );

    result.fold(
      (l) => emit(state.copyWith(
          status: BaseStateStatus.error, callbackMessage: l.message)),
      (r) => emit(const SignInState(status: BaseStateStatus.success)),
    );
  }
}
