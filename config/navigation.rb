SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = "active"
  navigation.items do |primary|
    primary.dom_class = "nav"

    primary.item :home, "My Reports", current_reports_path
  end
end