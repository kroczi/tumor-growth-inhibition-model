within TumorGrowthInhibitionModel;

model Proliferation
  TumorGrowthInhibitionModel.CellConnector proliferative annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector whole annotation(
    Placement(visible = true, transformation(origin = {-162, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real lambda_P(start = 0.121);
  parameter Real K(start = 100);

equation
  proliferative.rate = -lambda_P * proliferative.amount * (1 - whole.amount / K);
  whole.rate = 0;

  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end Proliferation;