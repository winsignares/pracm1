import 'package:shared_preferences/shared_preferences.dart';

class PrefernciaUsuario {
  static final PrefernciaUsuario _instancia = PrefernciaUsuario._internal();

  factory PrefernciaUsuario() {
    return _instancia;
  }

  PrefernciaUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  int get sexo {
    return _prefs.getInt('sexo') ?? 1;
  }

  set sexo(int value) {
    _prefs.setInt('sexo', value);
  }

  bool get colosecundario{
    return _prefs.getBool('colosecundario') ?? false;
  }

  set colosecundario(bool value){
     _prefs.setBool('colosecundario', value);
  }

  String get nombre{
    return _prefs.getString('nombre') ?? '';
  }

  set nombre(String value){
     _prefs.setString('nombre', value);
  }

  String get ultimapagina{
    return _prefs.getString('ultimapagina') ?? 'home';
  }

  set ultimapagina(String value){
     _prefs.setString('ultimapagina', value);
  }



}
