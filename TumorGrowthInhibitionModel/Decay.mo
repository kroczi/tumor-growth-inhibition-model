within TumorGrowthInhibitionModel;

model Decay
  TumorGrowthInhibitionModel.CellConnector treatment annotation(
    Placement(visible = true, transformation(origin = {-2, 98}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real KDE(start=0.24);
  
equation
  treatment.rate = KDE * treatment.amount;
  

  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end Decay;