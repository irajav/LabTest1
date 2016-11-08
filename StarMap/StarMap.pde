ArrayList<Star> data = new ArrayList<Star>(); //ArrayList of Star objects
float border;

void setup()
{
  size(800,800);
  border = width * 0.1f;
  
  printStars();
  
  for(int i = 0; i < data.size(); i++)
  {
    Star star = data.get(i);
  }
  for(Star star : data)
  {
    //println(star);
  }
  
  loadData();
}

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

void printStars()
{
  for (Star star : data)
  {
    println(star);
  }
}

void drawGrid()
{
  stroke (188, 255, 255);
  for(int x = 0; x<border; x+= 5)
  {
    for(int y = 0; y<border; y+=5)
    {
      fill(255,0,150);
      rect(x, y, 50, 50);
      rect(x+50, y+50, 50, 50);
    }
  }
  
}

void draw()
{
  background(255);
  drawGrid();
}