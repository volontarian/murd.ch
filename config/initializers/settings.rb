if Setting.table_exists?
  Setting['home_page.general.navigation.items'] = [['blog', 'posts'], ['music', 'music'], 'page_modules', 'users', 'settings', 'authentication']
end