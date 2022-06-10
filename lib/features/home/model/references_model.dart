class References {
  late String referenceName;
  late String referenceCompany;
  late String referencePosition;
  late String referenceTelephone;
  late String referenceMail;

  References(this.referenceCompany, this.referenceMail, this.referenceName,
      this.referencePosition, this.referenceTelephone);
}

List<References> myReferences = [
  References("New Bilişim Teknolojileri", "nuh@new.com.tr", "Nuh Ulu", "CEO",
      "05425584525")
];
