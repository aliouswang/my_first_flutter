import 'count_action.dart';
import 'count_model.dart';

CountedModel reducer(CountedModel state, action) {

  if (action == Action.increment) {
    return CountedModel(state.count + 1);
  } else return state;

}