theme = PryTheme.create name: "vwilight" do
  author name: "Jay Williams"
  author name: "Janko Marohnić", email: "janko.marohnic@gmail.com"
  description "Vim port of famous Textmate's Twilight theme"

  define_theme do
    class_ 139
    class_variable 103
    comment 59
    constant 139
    error 179
    float 167
    global_variable 103
    inline_delimiter 231
    instance_variable 103
    integer 167
    keyword 179
    method 95
    predefined_constant 103
    symbol 167

    regexp do
      self_ 179
      char 231
      content 179
      delimiter 179
      modifier 179
      escape 231
    end

    shell do
      self_ 107
      char 231
      content 107
      delimiter 107
      escape 231
    end

    string do
      self_ 107
      char 231
      content 107
      delimiter 107
      escape 231
    end
  end
end

PryTheme::ThemeList.add_theme(theme)
