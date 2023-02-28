import 'package:cubit_app/generic_cubit/generic_cubit.dart';

class ExampleViewModel{
GenericCubit<int> counter = GenericCubit(data: 1);

plusMyCounter(){
  counter.update(data: counter.state.data! + 1);
}

  minusMyCounter(){
    counter.update(data: counter.state.data! - 1);
  }

}