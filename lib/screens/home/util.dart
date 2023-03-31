


extension CustomStringFunct on String {

  String take(int length) {
    String res = '';
    if(this.length <= length)
      return this;

    for (int i = 0; i < length; i++) {
      res += this[i];
    }
    res += "...";
    return res;
  }

}


extension ObjectExtention on Object? {
  String? toStringOrNull(){
    if(this == null){
      return null;
    } else {
      return this.toString();
    }
  }
}


// <T> String? toString(T? value){
//   if(value == null){
//     return "";
//   } else {
//     return value.toString();
//   }
// }









