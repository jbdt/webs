unless User.find_by_email('user@example.com')
  User.create! do |u|
    u.email = 'user@example.com'
    u.password = 'changeme'
    u.role = 'admin'
  end
end

unless User.find_by_email('admin@example.com')
  User.create! do |u|
    u.email = 'admin@example.com'
    u.password = 'changeme'
    u.role = 'admin'
  end
end

unless User.find_by_email('integrator@example.com')
  User.create! do |u|
    u.email = 'integrator@example.com'
    u.password = 'changeme'
    u.role = 'integrator'
  end
end

unless User.find_by_email('client@example.com')
  User.create! do |u|
    u.email = 'client@example.com'
    u.password = 'changeme'
    u.role = 'client'
  end
end