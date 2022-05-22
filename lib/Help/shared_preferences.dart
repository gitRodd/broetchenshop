import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  ///Helper Klasse um alles um SharedPrefernces zu handeln


  ///[key] [value] speichert den value mit dem key
  save(String key, var value,) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  ///[key] kriegt ein key  und return den entsprechenden value
  getValue(String key) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

}