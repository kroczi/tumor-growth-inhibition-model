within TumorGrowthInhibitionModel;

model SimpleTumorSystem
  TumorGrowthInhibitionModel.Volume treatment(initial_amount = 1) annotation(
    Placement(visible = true, transformation(origin = {-30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Volume proliferative(initial_amount = 7.13) annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Volume quiescent(initial_amount = 41.2) annotation(
    Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Volume damagedQuiescent(initial_amount = 0) annotation(
    Placement(visible = true, transformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.DamagedQuiescentDeath damagedQuiescentDeath(delta_Qp = 0.00867) annotation(
    Placement(visible = true, transformation(origin = {90, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.DamagedQuiescentRepair damagedQuiescentRepair(k_QpP = 0.0031) annotation(
    Placement(visible = true, transformation(origin = {30, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Passivation passivation(k_PQ = 0.0295) annotation(
    Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.ProliferativeDamage proliferativeDamage(gamma_P = 0.729) annotation(
    Placement(visible = true, transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.QuiescentDamage quiescentDamage(gamma_Q = 0.729) annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Decay decay(KDE = 0.24) annotation(
    Placement(visible = true, transformation(origin = {48, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Aggregation aggregation annotation(
    Placement(visible = true, transformation(origin = {10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Proliferation proliferation(K = 100, lambda_P = 0.121) annotation(
    Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.InterSystemConnector proliferativeCon annotation(
    Placement(visible = true, transformation(origin = {-80, 20}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.InterSystemConnector treatmentCon annotation(
    Placement(visible = true, transformation(origin = {-40, -20}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.InterSystemConnector quiescentCon annotation(
    Placement(visible = true, transformation(origin = {-20, 80}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TumorGrowthInhibitionModel.InterSystemConnector damagedQuiescentCon annotation(
    Placement(visible = true, transformation(origin = {58, 20}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(quiescentCon, quiescent.cellConnector) annotation(
    Line(points = {{-20, 80}, {-20, 80}, {-20, 44}, {-14, 44}, {-14, 40}, {-10, 40}, {-10, 40}}));
  connect(damagedQuiescentCon, damagedQuiescent.cellConnector) annotation(
    Line(points = {{58, 20}, {58, 20}, {58, 8}, {70, 8}, {70, 0}, {70, 0}}));
  connect(proliferativeDamage.treatmentOut, treatment.cellConnector) annotation(
    Line(points = {{-10, -20}, {-10, -20}, {-10, -30}, {-28, -30}, {-28, -40}, {-30, -40}}));
  connect(treatmentCon, treatment.cellConnector) annotation(
    Line(points = {{-40, -20}, {-40, -20}, {-40, -30}, {-32, -30}, {-32, -42}, {-30, -42}, {-30, -40}}));
  connect(proliferativeCon, proliferative.cellConnector) annotation(
    Line(points = {{-80, 20}, {-80, 20}, {-80, -18}, {-76, -18}, {-76, -20}, {-70, -20}, {-70, -20}}));
  connect(quiescentDamage.treatmentIn, decay.treatment) annotation(
    Line(points = {{30, 40}, {30, 50}, {48, 50}, {48, -40}}));
  connect(quiescent.cellConnector, passivation.quiescent) annotation(
    Line(points = {{-10, 39.8}, {-12, 39.8}, {-12, 50}, {-40, 50}}));
  connect(passivation.proliferative, proliferative.cellConnector) annotation(
    Line(points = {{-60, 50}, {-69.8, 50}, {-69.8, -20}}));
  connect(proliferative.cellConnector, proliferation.proliferative) annotation(
    Line(points = {{-70, -20.2}, {-74, -20.2}, {-74, -14.2}, {-90, -14.2}, {-90, -60.2}, {-90, -60.2}}));
  connect(aggregation.whole, proliferation.whole) annotation(
    Line(points = {{10, -80}, {10, -80}, {10, -88}, {-90, -88}, {-90, -80}, {-90, -80}}));
  connect(quiescent.cellConnector, aggregation.quiescent) annotation(
    Line(points = {{-10, 39.8}, {-8, 39.8}, {-8, 49.8}, {10, 49.8}, {10, -60.2}, {10, -60.2}}));
  connect(proliferative.cellConnector, aggregation.proliferative) annotation(
    Line(points = {{-70, -20.2}, {-66, -20.2}, {-66, -14.2}, {-50, -14.2}, {-50, -70.2}, {0, -70.2}, {0, -70.2}}));
  connect(damagedQuiescent.cellConnector, aggregation.damagedQuiescent) annotation(
    Line(points = {{70, -0.2}, {74, -0.2}, {74, 9.8}, {90, 9.8}, {90, -70.2}, {20, -70.2}, {20, -70.2}}));
  connect(quiescentDamage.damagedQuiescent, damagedQuiescent.cellConnector) annotation(
    Line(points = {{40, 30}, {66, 30}, {66, 0}, {70, 0}, {70, 0}}));
  connect(quiescentDamage.treatmentOut, proliferativeDamage.treatmentIn) annotation(
    Line(points = {{30.2, 20}, {30.2, 20}, {30.2, 10}, {-9.8, 10}, {-9.8, 0}, {-9.8, 0}}));
  connect(quiescent.cellConnector, quiescentDamage.quiescent) annotation(
    Line(points = {{-10, 39.8}, {-10, 59.8}, {14, 59.8}, {14, 29.8}, {20, 29.8}}));
  connect(proliferative.cellConnector, proliferativeDamage.proliferative) annotation(
    Line(points = {{-70, -20.2}, {-68, -20.2}, {-68, -10.2}, {-20, -10.2}, {-20, -10.2}}));
  connect(proliferative.cellConnector, damagedQuiescentRepair.proliferative) annotation(
    Line(points = {{-70, -20.2}, {-72, -20.2}, {-72, 69.8}, {20, 69.8}, {20, 69.8}}));
  connect(damagedQuiescentRepair.damagedQuiescent, damagedQuiescent.cellConnector) annotation(
    Line(points = {{40, 70}, {68, 70}, {68, 0}, {70, 0}}));
  connect(damagedQuiescent.cellConnector, damagedQuiescentDeath.damagedQuiescent) annotation(
    Line(points = {{70, -0.2}, {72, -0.2}, {72, 49.8}, {90, 49.8}, {90, 39.8}, {90, 39.8}}));

annotation(
    Icon(graphics = {Rectangle(lineColor = {85, 170, 0}, fillColor = {85, 255, 0}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}), Text(origin = {1, 4}, extent = {{-79, 50}, {79, -50}}, textString = "%name")}));
end SimpleTumorSystem;