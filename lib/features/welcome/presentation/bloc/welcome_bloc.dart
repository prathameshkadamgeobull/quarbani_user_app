import 'package:flutter_bloc/flutter_bloc.dart';

import 'welcome_event.dart';
import 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeInitial()) {

    on<GetStartedPressed>((event, emit) {
      emit(NavigateToOnboardingState());
    });

  }
}