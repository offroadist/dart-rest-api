import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'tr'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String trText = '',
  }) =>
      [enText, trText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'w9eqqfq9': {
      'en': 'Email Address',
      'tr': 'E',
    },
    '77tdnber': {
      'en': 'Email Address',
      'tr': 'E',
    },
    'fr93d9rs': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'ynsb9s0f': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'bkqeym2e': {
      'en': 'Log In',
      'tr': 'Giriş yapmak',
    },
    'wh2cftad': {
      'en': 'Don\'t have an account?',
      'tr': 'Hesabınız yok mu?',
    },
    '7pk067tv': {
      'en': 'Create Account',
      'tr': 'Hesap oluşturmak',
    },
    'w557vpch': {
      'en': 'Forgot Password?',
      'tr': 'Parolanızı mı unuttunuz?',
    },
    '0yz3a3td': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Register
  {
    'd80e7gat': {
      'en': 'Email Address',
      'tr': 'E',
    },
    'a3roa4fv': {
      'en': 'Email Address',
      'tr': 'E',
    },
    'y7gtxsnb': {
      'en': 'Choose Password',
      'tr': 'Şifre seçin',
    },
    'wky4s800': {
      'en': 'Choose Password',
      'tr': 'Şifre seçin',
    },
    'agt0js9k': {
      'en': 'Confirm Password',
      'tr': 'Şifreyi Onayla',
    },
    'rc4g6txg': {
      'en': 'Confirm Password',
      'tr': 'Şifreyi Onayla',
    },
    'iryocrhn': {
      'en': 'Create Account',
      'tr': 'Hesap oluşturmak',
    },
    'i9ytyzk2': {
      'en': 'Already have an account?',
      'tr': 'Zaten hesabınız var mı?',
    },
    'ph9upm1u': {
      'en': 'Login',
      'tr': 'Giriş yap',
    },
    'jcqprth8': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // completeProfile
  {
    'zdtx050e': {
      'en': 'Complete Profile',
      'tr': 'Profilini Tamamla',
    },
    '4jjz628f': {
      'en': 'Image URL',
      'tr': 'Resim URL&#39;si',
    },
    'iv4d10kc': {
      'en': 'Copy an avatar here...',
      'tr': 'Bir avatarı buraya kopyalayın...',
    },
    'qr8hou9b': {
      'en': 'Your Name',
      'tr': 'Adınız',
    },
    'eqn94kvn': {
      'en': 'What name do you go by?',
      'tr': 'Hangi isimle gidiyorsun?',
    },
    'q2nq1tc0': {
      'en': 'Your Title',
      'tr': 'Unvanın',
    },
    'fag1f94u': {
      'en': 'What do you do?',
      'tr': 'Ne yaparsın?',
    },
    'otdl60pq': {
      'en': 'Save Profile',
      'tr': 'Profili kaydet',
    },
    'vutd6dqw': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // forgotPassword
  {
    'irycg7rt': {
      'en': 'Forgot Password',
      'tr': 'Parolanızı mı unuttunuz',
    },
    '1qrlcx03': {
      'en': 'Your Email Address',
      'tr': 'E',
    },
    'twseutmz': {
      'en': 'Please enter a email...',
      'tr': 'Lütfen bir e-posta girin...',
    },
    '9o1rcffh': {
      'en': 'Send Reset Link',
      'tr': 'Sıfırlama Bağlantısı Gönder',
    },
    'q9dj8vtr': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // MyFriends
  {
    '3t774geg': {
      'en': 'My Team',
      'tr': 'Benim takımım',
    },
    'h0n65xe2': {
      'en': 'My Friends',
      'tr': 'Arkadaşlarım',
    },
  },
  // chatMain
  {
    '3u2fhv64': {
      'en': 'All Chats',
      'tr': 'Tüm Sohbetler',
    },
    'c33l8je2': {
      'en': 'Chat',
      'tr': 'Sohbet',
    },
  },
  // chatDetails
  {
    'yzod7dh0': {
      'en': 'Job Title',
      'tr': 'İş ismi',
    },
    'kqhwy3qe': {
      'en': 'Employed Since',
      'tr': 'Dan beri çalışıyor',
    },
    '2372w6w9': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // myProfile
  {
    '1gxw3arm': {
      'en': 'Account Settings',
      'tr': 'Hesap ayarları',
    },
    'oy18jpbl': {
      'en': 'Edit Profile',
      'tr': 'Profili Düzenle',
    },
    '7nq553ae': {
      'en': 'Change Password',
      'tr': 'Şifre değiştir',
    },
    'cx8a2gub': {
      'en': 'Log Out',
      'tr': 'Çıkış Yap',
    },
    'nuu9z09r': {
      'en': 'Page Title',
      'tr': '',
    },
    '12wr4imc': {
      'en': 'Profile',
      'tr': 'Profil',
    },
  },
  // editProfile
  {
    '6a4uo46v': {
      'en': 'Edit Profile',
      'tr': 'Profili Düzenle',
    },
    'ey2d6omj': {
      'en': 'Email Address',
      'tr': 'E',
    },
    'hutzx47b': {
      'en': 'Full Name',
      'tr': 'Ad Soyad',
    },
    'iq617855': {
      'en': 'Job Title',
      'tr': 'İş ismi',
    },
    'lyz7hkcs': {
      'en': 'Save Changes',
      'tr': 'Değişiklikleri Kaydet',
    },
    'bh8ntswa': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // changePassword
  {
    'c4xfd46u': {
      'en': 'Change Password',
      'tr': 'Şifre değiştir',
    },
    'njbcenp1': {
      'en': 'Your Email Address',
      'tr': 'E',
    },
    't91reobg': {
      'en': 'Please enter a email...',
      'tr': 'Lütfen bir e-posta girin...',
    },
    'l0t3281e': {
      'en': 'Send Reset Link',
      'tr': 'Sıfırlama Bağlantısı Gönder',
    },
    'im4o5tzg': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Products
  {
    'aakg2xrx': {
      'en': 'Page Title',
      'tr': '',
    },
    '4cvn7n3x': {
      'en': 'Products',
      'tr': 'Ürünler',
    },
  },
  // chatDetailsCopy
  {
    'vzxq0m4f': {
      'en': 'Job Title',
      'tr': 'İş ismi',
    },
    '0gzx69al': {
      'en': 'Employed Since',
      'tr': 'Dan beri çalışıyor',
    },
    '1u7560vm': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // Conversations
  {
    '7dj5lq7m': {
      'en': 'WhatsApp',
      'tr': 'WhatsApp',
    },
    'howl1ql8': {
      'en': 'WhatsApp',
      'tr': 'WhatsApp',
    },
  },
  // ConversationList
  {
    '8xgfcm80': {
      'en': 'App',
      'tr': 'App',
    },
  },
  // Notifications
  {
    'kw0smwbw': {
      'en': 'Page Title',
      'tr': '',
    },
    'a75xh6vo': {
      'en': 'Notifications',
      'tr': 'Bildirimler',
    },
  },
  // Enquiry
  {
    'jlg5s4is': {
      'en': 'Questions',
      'tr': 'Sorular',
    },
  },
  // Conversation
  {
    'uj62k66i': {
      'en': 'Job Title',
      'tr': 'İş ismi',
    },
    'hg52utsh': {
      'en': 'Employed Since',
      'tr': 'Dan beri çalışıyor',
    },
    'ac1c2uob': {
      'en': 'Home',
      'tr': 'Ev',
    },
  },
  // SearchBar
  {
    'cbnpt7qy': {
      'en': 'Search for friends...',
      'tr': 'Arkadaşlarını ara...',
    },
    't1foomi5': {
      'en': 'Find your friend by na',
      'tr': 'na ile arkadaşını bul',
    },
  },
  // bottomSheet_1
  {
    'okcxd4ct': {
      'en': 'Sheeeesh',
      'tr': 'güzel',
    },
    'sj8gti38': {
      'en':
          'Drag-and-drop builder and no-code configuration make it easy to add chat to your app. Professionally designed templates and custom styling will take your app to the next level.',
      'tr':
          'Sürükle ve bırak oluşturucu ve kodsuz yapılandırma, uygulamanıza sohbet eklemeyi kolaylaştırır. Profesyonelce tasarlanmış şablonlar ve özel stil, uygulamanızı bir sonraki düzeye taşıyacaktır.',
    },
    '27u89w58': {
      'en': '2,205',
      'tr': '2.205',
    },
    'akbifya9': {
      'en': '8/10',
      'tr': '8/10',
    },
    '4b7c4mmr': {
      'en': 'Reject',
      'tr': 'Reddetmek',
    },
    '50xr8p78': {
      'en': 'Attend',
      'tr': 'Katılmak',
    },
  },
  // bottomSheet
  {
    'albddi1d': {
      'en': 'Sheeeesh!!!',
      'tr': 'Güzel!!!',
    },
    'd003rigi': {
      'en':
          'This is some dope stuff in this bottom sheet man, i\'m def. a millenial.',
      'tr':
          'Bu, bu alt sayfadaki bazı uyuşturucu şeyler adamım, kesinlikle. bin yıl.',
    },
    'xkaixqsd': {
      'en': 'Let\'s Go!',
      'tr': 'Hadi gidelim!',
    },
  },
  // friendList
  {
    'gcjua4ln': {
      'en': 'Alex Edwards',
      'tr': 'Alex Edwards',
    },
    'xqmsr7yf': {
      'en': '[userEmail]',
      'tr': '[Kullanıcı e-postası]',
    },
  },
  // Miscellaneous
  {
    'k85nx093': {
      'en': '',
      'tr': '',
    },
    'mowpb8pg': {
      'en': '',
      'tr': '',
    },
    'twm5vmov': {
      'en': '',
      'tr': '',
    },
    '2b08f6py': {
      'en': '',
      'tr': '',
    },
    's097twrd': {
      'en': '',
      'tr': '',
    },
    'xle2ha00': {
      'en': '',
      'tr': '',
    },
    'qchp4268': {
      'en': '',
      'tr': '',
    },
    '1y8twiie': {
      'en': '',
      'tr': '',
    },
    'pl29ervq': {
      'en': '',
      'tr': '',
    },
    'p4ezw7ig': {
      'en': '',
      'tr': '',
    },
    'iyp70lbn': {
      'en': '',
      'tr': '',
    },
    'o8849bpl': {
      'en': '',
      'tr': '',
    },
    '1ydik5kb': {
      'en': '',
      'tr': '',
    },
    '9sn7ha17': {
      'en': '',
      'tr': '',
    },
    'jnicateb': {
      'en': '',
      'tr': '',
    },
    '1w69mx04': {
      'en': '',
      'tr': '',
    },
    '9ktz0s53': {
      'en': '',
      'tr': '',
    },
    'x3gjksrd': {
      'en': '',
      'tr': '',
    },
    'v7gsccoy': {
      'en': '',
      'tr': '',
    },
    'isf3rbqn': {
      'en': '',
      'tr': '',
    },
    '4lqz4lch': {
      'en': '',
      'tr': '',
    },
    '6d5xnw55': {
      'en': '',
      'tr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
