NAMES = %w(Oliver Jack Harry George Jacob Hiroshi Takashi Akira Daisuke Ren Abbas Bishr Gamal Hamza Jafar)
SURNAMES = %w(González Rodríguez Gómez Fernández López Díaz Martínez Pérez García Sánchez Romero Sosa Torres Álvarez Ruiz Ramírez Flores Benítez Acosta Medina Herrera Suárez Aguirre)
COUNT_FILLED = 46
ROLE = %w(admin integrator client)

unless User.find_by_email('admin@correo.com')
  User.create! do |u|
    u.name = "Daniel"
    u.surnames = "López García"
    u.phone = "+34 684 15 98 85"
    u.email = 'admin@correo.com'
    u.password = 'Test1234'
    u.role = 'admin'
  end
end

unless User.find_by_email('integrator@correo.com')
  User.create! do |u|
    u.name = "María Luisa"
    u.surnames = "Rodríguez del Cerro"
    u.phone = "+34 669 25 91 97"
    u.email = 'integrator@correo.com'
    u.password = 'Test1234'
    u.role = 'integrator'
  end
end

unless User.find_by_email('client@correo.com')
  User.create! do |u|
    u.name = "Marta"
    u.surnames = "Cuesta Fuentes"
    u.phone = "+34 677 82 23 04"
    u.email = 'client@correo.com'
    u.password = 'Test1234'
    u.role = 'client'
  end
end

unless User.find_by_email('amorchi@vegana.com')
  User.create! do |u|
    u.name = "Alejandra"
    u.surnames = "Rivas Joza"
    u.phone = "+34 647 18 53 82	"
    u.email = 'amorchi@vegana.com'
    u.password = 'Test1234'
    u.role = 'admin'
  end
end

COUNT_FILLED.times do |i|
  name = NAMES.sample
  email = "#{name}#{rand(0..999)}@correo.com"
  unless User.find_by_email(email)
    User.create! do |u|
      u.name = name
      u.surnames = "#{SURNAMES.sample} #{SURNAMES.sample}"
      u.phone = "+34 6#{rand(0..99).to_s.rjust(2, "0")} #{rand(0..99).to_s.rjust(2, "0")} #{rand(0..99).to_s.rjust(2, "0")} #{rand(0..99).to_s.rjust(2, "0")}"
      u.email = email
      u.password = 'Test1234'
      u.role = ROLE.sample
    end
  end
end