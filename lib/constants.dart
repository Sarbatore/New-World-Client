import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 49, 60, 112);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Veuillez entrer votre email";
const String kInvalidEmailError = "Veuillez entrer un email valide";
const String kPassNullError = "Veuillez entrer votre mot de passe";
const String kShortPassError = "Votre mot de passe est trop court";
const String kMatchPassError = "Vos mots de passe ne correspondent pas";
const String kNamelNullError = "Veuillez entrer votre nom";
const String kPhoneNumberNullError = "Veuillez entrer votre numéro de téléphone";
const String kAddressNullError = "Veuillez entrer votre adresse";

const String tContinue = "Continuer";
const String tEmail = "Email";
const String tEnterYourEmail = "Entrez votre email";
const String tPassword = "Mot de passe";
const String tEnterYourPassword = "Entrez votre mot de passe";
const String tRememberMe = "Se souvenir de moi";
const String tForgotPassword = "Mot de passe oublié";
const String tConfirmPassword = "Confirmez votre mot de passe";
const String tReEnterYourPassword = "Entrez à nouveau votre mot de passe";
const String tRegisterAccount = "Créer un compte";
const String tSignUp = "S'inscrire";
const String tAlreadyHaveAnAccount = "Vous avez déjà un compte ?";
const String tYouAgreeTerms = "En continuant, vous acceptez nos Termes et Conditions";
const String tCompleteProfile = "Compléter votre profil";
const String tCompleteYourDetails = "Complétez vos détails";

const String tFirstName = "Prénom";
const String tEnterYourFirstName = "Entrez votre prénom";
const String tLastName = "Nom";
const String tEnterYourLastName = "Entrez votre nom";
const String tPhoneNumber = "Numéro de téléphone";
const String tEnterYourPhoneNumber = "Entrez votre numéro de téléphone";
const String tAddress = "Adresse";
const String tEnterYourAddress = "Entrez votre adresse";
const String tWeSentCode = "Nous avons envoyé votre code à ";
const String tOtpVerification = "Vérification OTP";
const String tResendOtp = "Renvoyer le code OTP";
const String tThisCodeWillExpire = "Ce code va expirer dans ";

const String tLoginSuccess = "Connexion réussie";

const String tMyAccount = "Mon compte";
const String tLogOut = "Se déconnecter";
const String tSearchProduct = "Rechercher un produit";
const String tProducts = "Produits";

const String tCheckOut = "Payer";
const String tYourCart = "Votre panier";
const String tItems = "articles";
const String tAddToCart = "Ajouter au panier";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
