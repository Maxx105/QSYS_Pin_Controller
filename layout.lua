local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Pin Controller",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {3,2},
    Size = {369,341},
    CornerRadius = 8
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "PIN NAMES",
    Position = {36,25},
    Size = {136,25},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "PIN",
    Position = {195,25},
    Size = {136,25},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "NEW PIN NAME",
    Position = {36,158},
    Size = {136,25},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "NEW PIN",
    Position = {195,158},
    Size = {136,25},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "STATUS",
    Position = {36,270},
    Size = {136,25},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Left"
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