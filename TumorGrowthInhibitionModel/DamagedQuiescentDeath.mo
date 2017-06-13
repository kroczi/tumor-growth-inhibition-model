within TumorGrowthInhibitionModel;

model DamagedQuiescentDeath
  TumorGrowthInhibitionModel.CellConnector damagedQuiescent annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real delta_Qp(start=1.0);
  
equation
  damagedQuiescent.rate = delta_Qp * damagedQuiescent.amount;


  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end DamagedQuiescentDeath;