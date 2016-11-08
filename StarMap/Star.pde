// class called Star
// Question 1

class Star
{
  float Hab;
  String DisplayName;
  float Distance;
  float xg;
  float yg;
  float zg;
  float AbsMag;
  
  Star(String line)
  {
    String[] fields = line.split(",");
    Hab = Float.parseFloat(fields[3]);
    DisplayName = fields[4];
    Distance = Float.parseFloat(fields[13]);
    xg = float.parseFloat(fields[14]);
    yg = float.parseFloat(fields[15]);
    zg = float.parseFloat(fields[16]);
    AbsMag = float.parseFloat(fields[17]);
    
  }//end of String
  
  Star(TableRow row)
  {
    Hab = row.getFloat(3);
    DisplayName = row.getString(4);
    Distance = row.getFloat(13);
    xg = row.getFloat(14);
    yg = row.getFloat(15);
    zg = row.getFloat(16);
    AbsMag = row.getFloat(17);
    
  }//end of TableRow
  
}//end of Class Star
  
  
    