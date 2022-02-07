local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Pin Controller",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {3,2},
    Size = {369,341}
  })
  layout["CreatePin"] = {
    PrettyName = "Buttons~Add Pin",
    Style = "Button",
    Position = {36,221},
    Size = {295,35},
    Color = {255,255,255},
    UnlinkOffColor = true,
    OffColor = {124,124,124}
  }
end