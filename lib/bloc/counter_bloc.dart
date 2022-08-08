import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/counter_event.dart';
import 'package:flutter_bloc_demo/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState);

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
    CounterState currentState,
    CounterEvent event,
  ) async* {
    if (event is IncrementEvent) {
      yield currentState..counter += 1;
    } else if (event is DecrementEvent) {
      yield currentState..counter -= 1;
    }
  }
}
