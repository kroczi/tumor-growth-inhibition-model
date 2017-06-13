within TumorGrowthInhibitionModel;

model QuiescentDamage
  TumorGrowthInhibitionModel.CellConnector treatmentIn annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector treatmentOut annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {2, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector quiescent annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector damagedQuiescent annotation(
    Placement(visible = true, transformation(origin = {-200, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real gamma_Q(start=1.0);

equation
  quiescent.rate = -gamma_Q * treatmentIn.rate * quiescent.amount;
  damagedQuiescent.rate = gamma_Q * treatmentIn.rate * quiescent.amount;
  treatmentOut.rate = -treatmentIn.rate;
  treatmentOut.amount = treatmentIn.amount;

  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end QuiescentDamage;