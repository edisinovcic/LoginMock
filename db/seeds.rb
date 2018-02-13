parkingHistories = ParkingHistory.create!([
                                              {address: 'Savska 32', date: '24.12.2017.', duration: 1.5, paid_price: 50.0},
                                              {address: 'Savska 33', date: '15.11.2017.', duration: 2.0, paid_price: 100.0},
                                              {address: 'Savska 34', date: '17.10.2017.', duration: 2.5, paid_price: 150.0}
                                          ])

users = User.create!([
                         {first_name: 'Test', last_name: 'User', email: 'email@email.com', password: 'password'},
                         {first_name: 'Test2', last_name: 'User2', email: 'email2@email.com', password: 'password2'},
                     ])

parkingLocations = ParkingLocation.create!([
                                               {name: 'Izak\'s crib', description: 'Loren ipsum', address: 'Zurich HB, Zürich, Switzerland', latitude: '47.378353', longitude: '8.538341'},
                                               {name: 'Darko\'s crib', description: 'Loren ipsum2', address: 'Savska 33, Zagreb, Croatia', latitude: '42.378353', longitude: '14.538341'},
                                               {name: 'Domagoj\'s crib', description: 'Loren ipsum3', address: 'Savska 32, Zagreb, Croatia', latitude: '41.378353', longitude: '13.538341'}
                                           ])
