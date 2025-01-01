import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(LandingInitial());
  bool draweropen = true;

  test() {
    // draweropen=false;
    print("----- landing cubit test ----");
  }

  toggledrawer() {
    print("-------------11");
    draweropen = !draweropen;
    print("-------------22");
    emit(drawerstate());
  }
}
