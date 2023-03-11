
import 'package:flutter/foundation.dart';

class Loginprovider extends ChangeNotifier
{
  int i = 0;

  void onContinue()
  {
    if(i<2)
      {
        i++;
      }
    notifyListeners();
  }

  void onCancel()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }
}