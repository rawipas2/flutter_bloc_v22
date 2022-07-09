import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'count_a_state.dart';
part 'counter_a_event.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(CounterAState(count: 0)) {
    // Add Event
    on<CounterAEvent>((event, emit) {
      //emit(CounterAState(count: state.count + 1));
      emit(state.coppyWith(count: state.count + 1));
    });

    // Reset Event
    on<CounterAEventReset>(((event, emit) => {
      emit(state.coppyWith(count: 0))
    }));
  }
}
