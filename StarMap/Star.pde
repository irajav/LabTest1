// class called Star
// Question 1

class Star
{
  int Hab;
  String DisplayName;
  float Distance;
  float xg;
  float yg;
  float zg;
  float AbsMag;
  
  Star(String line)
  {
    String[] fields = line.split(",");
    Hab = Integer.parseInt(fields[2]);                 //habitability flag 1
    DisplayName = fields[3];                           //name of the star 
    Distance = Float.parseFloat(fields[12]);           //distance from the sun in parsecs
    xg = Float.parseFloat(fields[13]);                 //co-ordinates
    yg = Float.parseFloat(fields[14]);                 //co-ordinates
    zg = Float.parseFloat(fields[15]);                 //co-ordinates
    AbsMag = Float.parseFloat(fields[16]);             //star's size
    
  }//end of String
  
  Star(TableRow row) //constructor
  {
    Hab = row.getInt(2);
    DisplayName = row.getString(3);
    Distance = row.getFloat(12);
    xg = row.getFloat(13);
    yg = row.getFloat(14);
    zg = row.getFloat(15);
    AbsMag = row.getFloat(16);
    
  }//end of TableRow
  
}//end of Class Star
  
  
    