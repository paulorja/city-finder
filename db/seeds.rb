if City.all.blank? && State.all.blank?
  sc = State.create name: 'Santa Catarina', abbreviation: 'SC'
  pr = State.create name: 'Paraná', abbreviation: 'PR'
  rs = State.create name: 'Rio Grande do Sul', abbreviation: 'RS'
  
  sc.cities.create([
    { name: 'Joinvile' },
    { name: 'Florianópolis' },
    { name: 'Blumenau' }
  ])

  pr.cities.create([
    { name: 'Curitiba' },
    { name: 'Maringá' },
    { name: 'Londrina' }
  ])

  rs.cities.create([
    { name: 'Porto Alegre' },
    { name: 'Caxias do Sul' },
    { name: 'Pelotas' }
  ])
end