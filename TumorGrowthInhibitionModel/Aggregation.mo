within TumorGrowthInhibitionModel;

model Aggregation
  TumorGrowthInhibitionModel.CellConnector proliferative annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100,0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector quiescent annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector damagedQuiescent annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100,0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.CellConnector whole annotation(
    Placement(visible = true, transformation(origin = {-162, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));

equation
  whole.amount = proliferative.amount + quiescent.amount + damagedQuiescent.amount;
  //whole.rate = 0;
  proliferative.rate = 0;
  quiescent.rate = 0;
  damagedQuiescent.rate = 0;

  annotation(
    Icon(graphics = {Rectangle(lineColor = {120, 120, 120}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 2}, extent = {{-63, 18}, {63, -18}}, textString = "%name")}));
end Aggregation;