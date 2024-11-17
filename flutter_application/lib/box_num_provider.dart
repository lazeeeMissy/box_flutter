import 'package:flutter_riverpod/flutter_riverpod.dart';

final boxProvider  = StateProvider<int>((ref)=>0);

class BoxUtils {
  static List<int> addBoxID(int count){
    return List.generate(count, (index)=>index+1);
  }
  static List<int> removeBoxID(int count){
    return List.generate(count, (index)=>index-1);
  }
}