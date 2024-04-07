/// To Convert the response into a non nullable Object (Model)

import 'package:flutter_clean_architecture/app/extensions.dart';
import 'package:flutter_clean_architecture/data/responses/responses.dart';
import 'package:flutter_clean_architecture/domain/model/model.dart';

const EMPTY = '';
const ZERO = 0;

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? EMPTY,
        this?.name?.orEmpty() ?? EMPTY,
        this?.numOfNotifications?.orZero() ?? ZERO);
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email?.orEmpty() ?? EMPTY, this?.phone?.orEmpty() ?? EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this!.customer.toDomain(), this!.contacts.toDomain());
  }
}
