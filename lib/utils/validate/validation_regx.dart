class Regx {
  static final RegExp validateEmail = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );

  static final RegExp validatePassword = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  static final RegExp validateName = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  static final RegExp validatePhoneNumber = RegExp(
    r'^[0-9]{10}$',
  );

  static final RegExp _otpRegExp = RegExp(
    r'^[0-9]{6}$',
  );

  static final RegExp _addressRegExp = RegExp(
    r'^[a-zA-Z0-9]+(([,. -][a-zA-Z0-9 ])?[a-zA-Z0-9]*)*$',
  );

  static final RegExp validateZip = RegExp(
    r'^[0-9]{6}$',
  );

  static final RegExp _cityRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  static final RegExp _stateRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  static final RegExp _countryRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  static final RegExp _landmarkRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  static final RegExp _dateRegExp = RegExp(
    r'^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$',
  );

  static final RegExp _timeRegExp = RegExp(
    r'^[0-9]{2}:[0-9]{2}$',
  );

  static final RegExp _amountRegExp = RegExp(
    r'^[0-9]{1,7}$',
  );

  static final RegExp _numberRegExp = RegExp(
    r'^[0-9]{1,7}$',
  );

  static final RegExp _textRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );
}