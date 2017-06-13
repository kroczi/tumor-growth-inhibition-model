within TumorGrowthInhibitionModel;

model DamagedQuiescentRepair
  TumorGrowthInhibitionModel.CellConnector damagedQuiescent annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100,0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector proliferative annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real k_QpP(start=1.0);

equation
  damagedQuiescent.rate = k_QpP * damagedQuiescent.amount;
  proliferative.rate = -k_QpP * damagedQuiescent.amount;
  
  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end DamagedQuiescentRepair;