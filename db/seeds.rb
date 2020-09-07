unless User.find_by_email('admin@example.com')
  User.create! do |u|
    u.name = "Daniel"
    u.surnames = "López García"
    u.phone = "+34 684 15 98"
    u.email = 'admin@example.com'
    u.password = 'changeme'
    u.role = 'admin'
  end
end

unless User.find_by_email('integrator@example.com')
  User.create! do |u|
    u.name = "María Luisa"
    u.surnames = "Rodríguez del Cerro"
    u.phone = "+34 669 25 91"
    u.email = 'integrator@example.com'
    u.password = 'changeme'
    u.role = 'integrator'
  end
end

unless User.find_by_email('client@example.com')
  User.create! do |u|
    u.name = "Marta"
    u.surnames = "Cuesta Fuentes"
    u.phone = "+34 677 82 23"
    u.email = 'client@example.com'
    u.password = 'changeme'
    u.role = 'client'
  end
end