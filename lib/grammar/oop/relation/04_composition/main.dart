void main(){
  Document document = Document();
  Student student = Student(document);
  student.event("2000 年 入学 XXXX 小学");
  student.event("2006 年 XXXX 初中");
  student.event("2009 年入学 XXXX 高中");
  student.event("2012 年入学 XXXX 大学");
  String info = student.callDocument();
  print(info);
}

class Student{
  Document document;

  Student(this.document);

  void event(String string){
    document.records.add(string);
  }

  String callDocument(){
    return document.records.join("\n");
  }

  void died(){
    document.records.clear();
  }
}

class Document{
  List<String> records = [];

  void addRecord(String string){
    records.add(string);
  }
}