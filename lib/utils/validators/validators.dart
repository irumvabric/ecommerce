class TValidators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    //regural expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must contain than 6 digits';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain al least one uppercase letter';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain al least one number';
    }

    //regural expression for email validation
    final specialCharacterRegExp = RegExp(r'[!@#$%^&*()<>{}]');

    if (!specialCharacterRegExp.hasMatch(value)) {
      return 'Password must contain a spacial letter.';
    }
    return null;
  }
}
