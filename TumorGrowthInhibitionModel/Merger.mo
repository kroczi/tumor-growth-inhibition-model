within TumorGrowthInhibitionModel;

model Merger
  TumorGrowthInhibitionModel.InterSystemConnector a annotation(
    Placement(visible = true, transformation(origin = {2, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.InterSystemConnector b annotation(
    Placement(visible = true, transformation(origin = {12, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real c_a(start=0);
  parameter Real c_b(start=0);
  
  
equation
  a.rate = - c_a * (a.amount - b.amount);
  b.rate = - c_b * (a.amount - b.amount);
  
  annotation(
    Icon(graphics = {Rectangle(origin = {-1, 0}, lineColor = {170, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-99, 100}, {101, -100}}), Text(origin = {-2, 6},lineColor = {255, 255, 255}, lineThickness = 1, extent = {{-102, 62}, {108, -72}}, textString = "%name", textStyle = {TextStyle.Bold})}, coordinateSystem(initialScale = 0.1)));
end Merger;