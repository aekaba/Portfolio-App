class Education {
  late String eduName;
  late String eduDepartment;
  late String eduDesc;
  late String eduYear;

  Education(this.eduName, this.eduDepartment, this.eduDesc, this.eduYear);
}

List<Education> eduHistory = [
  Education("Beykent University", "Software Engineering", "C++, Java", "2021"),
  Education(
      "Haydar Akin MTAL",
      "Database Programmer",
      "Yazılım hayatıma bu okulda başladım, 83 ortalama ile bitirdiğim okulda bölüm derslerimi hep yüksek puanlarla geçtim. Okulda C#, Sql dilleri öğretildi ve son senemdede flutter ile tanıştırdı.",
      "2017-2021"),
];
