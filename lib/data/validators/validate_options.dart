class ValidateOptions {
  final String? fieldName;
  final int? minLength;
  final int? maxLength;
  final bool required;
  final String? value;
  const ValidateOptions({
    this.value,
    this.minLength,
    this.maxLength,
    this.fieldName,
    this.required = true,
  });
}