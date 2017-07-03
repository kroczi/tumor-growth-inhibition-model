within TumorGrowthInhibitionModel;

model ComplexTumorSystem
  TumorGrowthInhibitionModel.SimpleTumorSystem systemA annotation(
    Placement(visible = true, transformation(origin = {1, 59}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TumorGrowthInhibitionModel.SimpleTumorSystem systemB annotation(
    Placement(visible = true, transformation(origin = {1, -59}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TumorGrowthInhibitionModel.Merger proliferativeMer annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Merger treatmentMer annotation(
    Placement(visible = true, transformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Merger quiescentMer annotation(
    Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TumorGrowthInhibitionModel.Merger damagedQuiescentMer annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(treatmentMer.b, systemB.treatmentCon) annotation(
    Line(points = {{-70, -40}, {-70, -40}, {-70, -68}, {-14, -68}, {-14, -68}}));
  connect(proliferativeMer.b, systemB.proliferativeCon) annotation(
    Line(points = {{-50, 20}, {-50, 20}, {-50, -50}, {-14, -50}, {-14, -50}}));
  connect(systemA.treatmentCon, treatmentMer.a) annotation(
    Line(points = {{-14, 50}, {-70, 50}, {-70, -20}, {-70, -20}, {-70, -20}}));
  connect(quiescentMer.a, systemA.quiescentCon) annotation(
    Line(points = {{70, 40}, {70, 40}, {70, 68}, {16, 68}, {16, 68}}));
  connect(quiescentMer.b, systemB.quiescentCon) annotation(
    Line(points = {{70, 20}, {70, 20}, {70, -50}, {16, -50}, {16, -50}}));
  connect(damagedQuiescentMer.b, systemB.damagedQuiescentCon) annotation(
    Line(points = {{50, -40}, {50, -40}, {50, -68}, {16, -68}, {16, -68}}));
  connect(systemA.damagedQuiescentCon, damagedQuiescentMer.a) annotation(
    Line(points = {{16, 50}, {50, 50}, {50, -20}, {50, -20}}));
  connect(proliferativeMer.a, systemA.proliferativeCon) annotation(
    Line(points = {{-50, 40}, {-50, 40}, {-50, 68}, {-14, 68}, {-14, 68}}));

end ComplexTumorSystem;