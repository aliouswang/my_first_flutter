import 'package:scoped_model/scoped_model.dart';
import 'package:meta/meta.dart';

@immutable
class CountedModel extends Model {
  int _count = 0;
  get count => _count;

  CountedModel(this._count);

  CountedModel.initState() : _count = 0;

  void increment() {
    _count++;
    notifyListeners();
  }
}