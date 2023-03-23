


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