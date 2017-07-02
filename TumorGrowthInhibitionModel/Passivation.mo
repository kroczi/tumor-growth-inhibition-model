within TumorGrowthInhibitionModel;

model Passivation
  TumorGrowthInhibitionModel.CellConnector proliferative annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-98, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector quiescent annotation(
    Placement(visible = true, transformation(origin = {-162, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 3.55271e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real k_PQ(start=0.0295);
  
equation
  proliferative.rate = k_PQ * proliferative.amount;
  quiescent.rate = -k_PQ * proliferative.amount;
  
  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end Passivation;