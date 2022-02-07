local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Pin Controller",
    Fill = {210,220,255},
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
  table.insert(graphics,{
    Type = "Text",
    Text = "ADD A NEW PIN:",
    Position = {99,118},
    Size = {162,24},
    FontSize = 12,
    -- FontStyle = "Bold",
    HTextAlign = "Center"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "___________________________________________________",
    Position = {13,94},
    Size = {349,24},
    FontSize = 14,
    -- FontStyle = "Bold",
    HTextAlign = "Center"
  })


  layout["CreatePin"] = {
    PrettyName = "New Pins~Add Pin",
    Style = "Button",
    Position = {36,221},
    Size = {295,35},
    Color = {255,255,255},
    UnlinkOffColor = true,
    OffColor = {124,124,124}
  }
  layout["PinNames"] = {
    PrettyName = "Current Pins~Pin Names",
    Style = "ComboBox",
    Position = {36,50},
    Size = {136,28},
    FontSize = 12
  }
  layout["Pin"] = {
    PrettyName = "Current Pins~Pin",
    Style = "Text",
    Position = {195,50},
    Color = {194,194,194},
    Size = {136,28},
    FontSize = 12
  }
  layout["NewPinName"] = {
    PrettyName = "New Pins~New Pin Name",
    Style = "Text",
    Position = {36,183},
    Size = {136,28},
    FontSize = 12
  }
  layout["NewPinPin"] = {
    PrettyName = "New Pins~New Pin",
    Style = "Text",
    Position = {195,183},
    Size = {136,28},
    FontSize = 12
  }
  layout["Status"] = {
    PrettyName = "Status",
    Style = "Text",
    Position = {36,293},
    Color = {194,194,194},
    Size = {295,30},
    FontSize = 12
  }
end