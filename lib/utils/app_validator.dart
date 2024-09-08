class Validator {
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter email or phone number';
    }

    String phonePattern = r'^[0-9]{10,15}$';

    RegExp phoneRegExp = RegExp(phonePattern);

    if (!phoneRegExp.hasMatch(value)) {
      return 'Enter a valid email or phone number';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }

    // Combined pattern
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return 'Password must be strong:P@ssw0rd';
    }

    return null;
  }

  static String? validateConfirmPassword(
      String? value, String originalPassword) {
    if (value == null || value.isEmpty) {
      return 'Please enter confirm password';
    }
    if (value != originalPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }

    // Check length limits (minimum 3, maximum 14 characters)
    if (value.length < 3 || value.length > 14) {
      return 'Name must be between 3 and 14 char..';
    }

    // Check if the first letter is capitalized
    if (value[0] != value[0].toUpperCase()) {
      return 'Name should start with a capital letter';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }

    // Regular expression pattern for basic email validation
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }

    return null;
  }

  static String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter OTP';
    }
    if (value.length != 6) {
      return 'OTP must be exactly 6 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'OTP should contain only digits';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number cannot be empty';
    }

    String pattern = r'^[+]?[(]?[0-9]{3}[)]?[-s.]?[0-9]{3}[-s.]?[0-9]{4,6}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }

    return null;
  }

  String? genderValidate(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your gender';
    } else {
      return null;
    }
  }
}
