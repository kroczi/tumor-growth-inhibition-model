within TumorGrowthInhibitionModel;

model Volume
  TumorGrowthInhibitionModel.CellConnector cellConnector annotation(
    Placement(visible = true, transformation(origin = {2, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 98}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  
  Real amount;
  parameter Real initial_amount;

initial equation
  amount = initial_amount;

equation
  amount = cellConnector.amount;
  assert(amount >= 0, "Amount cannot be negative.");
  der(amount) = cellConnector.rate;
  
  
  annotation(
    Icon(graphics = {Rectangle(origin = {0, -1}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, extent = {{-100, 101}, {100, -99}}), Text(origin = {-2, 3}, extent = {{-98, 57}, {102, -63}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
end Volume;