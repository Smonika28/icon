
 import 'dart:core';

import 'package:email_validator/email_validator.dart';
// import '../../../utils/validate/validation_regx.dart'


class customValidation {

  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    else if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateFirstName(String value) {
    if (value.isEmpty) {
      return 'First Name is required';
    } else if (value.length < 3) {
      return 'Please Enter First Name';
    }
    return null;
  }

  static String? validateLastName(String value) {
    if (value.isEmpty) {
      return 'Last Name is required';
    } else if (value.length < 3) {
      return 'Please Enter Last Name';
    }
    return null;
  }

  // static String? validateAddress(String value) {
  //   if (value.isEmpty) {
  //     return 'Address is required';
  //   } else if (value.length < 3) {
  //     return 'Address must be at least 3 characters';
  //   }
  //   return null;
  // }

  // static String? validateCity(String value) {
  //   if (value.isEmpty) {
  //     return 'City is required';
  //   } else if (value.length < 3) {
  //     return 'City must be at least 3 characters';
  //   }
  //   return null;
  // }

  // static String? validatePhoneNumber(String value) {
  //   if (value.isEmpty) {
  //     return 'Phone is required';
  //   } else if (value.length < 10) {
  //     return 'Phone must be at least 10 characters';
  //   }
  //   return null;
  // }

  static String? validatePhoneNumber(String s) {
    if (s.isEmpty) {
      return 'Please enter phone number';
    } else if (s.length < 10) {
      return 'Please enter valid phone number';
    }
    else {
      return null;
    }
  }
// static String? validateState(String value) {
//   if (value.isEmpty) {
//     return 'State is required';
//   } else if (value.length < 3) {
//     return 'State must be at least 3 characters';
//   }
//   return null;
// }

static String? validateZip(String value) {
  if (value.isEmpty) {
    return 'Zip is required';
  } else if (value.length < 3) {
    return 'Zip must be at least 3 characters';
  }
  return null;
}

// static String? validateCountry(String value) {
//   if (value.isEmpty) {
//     return 'Country is required';
//   } else if (value.length < 3) {
//     return 'Country must be at least 3 characters';
//   }
//   return null;
// }

}


