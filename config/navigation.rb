SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = "active"
  navigation.items do |primary|
    primary.dom_class = "nav"

    primary.item :my, "My Reports", current_reports_path
    primary.item :archive, "Past Reports", archive_reports_path
  end
end