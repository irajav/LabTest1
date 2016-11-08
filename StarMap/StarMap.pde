void setup()
{
  size(800,800);
  loadData();
}

ArrayList<Star> data = new ArrayList<Star>(); //ArrayList of Star objects

void loadData()
{
  data.clear();
  
  String[] lines = loadStrings("HabHYG15ly.csv");
  for(String line: lines)
  {
    Star star = new Star(line);
    data.add(star);
  }
    data.clear();
    
    Table t = loadTable("HabHYG15ly.csv");
    for(int i = 0; i <t.getRowCount(); i++)
    {
      TableRow row = t.getRow(i);
      Star star = new Star(row);
      data.add(star);
    }
}