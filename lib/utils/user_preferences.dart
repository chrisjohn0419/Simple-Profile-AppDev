import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:appdev/model/user.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
    imagePath:
        'https://scontent.fdvo2-1.fna.fbcdn.net/v/t39.30808-6/308857509_2282601511894523_8703071321394545403_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEF1DGjupiF1hdQWjYr5jdU_kxe5Bt6qj_-TF7kG3qqPyjcFGBkPeMXBQWW82-YNydreM1Kd_pyt07vgmlPGvix&_nc_ohc=_b3_Bx8f38wAX_tLwUG&_nc_ht=scontent.fdvo2-1.fna&oh=00_AfCpXGilvxQOcJYgw1BEPie5i447Gih7xHidpSOjHiZwpQ&oe=63F9A670',
    name: 'John Christian',
    email: 'johnchristian760@gmail.com',
    about:
        'A student is a dedicated learner constantly seeking knowledge and skill development.',
    isDarkMode: false,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
