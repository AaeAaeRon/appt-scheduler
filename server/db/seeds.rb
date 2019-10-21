Client.destroy_all
Pro.destroy_all
Service.destroy_all
Appointment.destroy_all


c1 = Client.create(first_name: 'Aaron', last_name: 'Briscoe', cell_num: '281-217-2419', email: 'abriscoe2008@gmail.com', password: 'password')
c2 = Client.create(first_name: 'John', last_name: 'Smith', cell_num: '713-235-8392', email: 'js@yahoo.com', password: 'password')

p1 = Pro.create(first_name: 'James', last_name: 'Smith', cell_num: '713-123-2684', email: 'james@gmail.com', password: 'password')
p2 = Pro.create(first_name: 'Blake', last_name: 'Randall', cell_num: '832-934-9173', email: 'blakeyr@gmail.com', password: 'password')
p3 = Pro.create(first_name: 'Sean', last_name: 'Warn', cell_num: '281-123-3453', email: 'seanw@hotmail.com', password: 'password')
p4 = Pro.create(first_name: 'Crystal', last_name: 'Savoy', cell_num: '281-354-7408', email: 'crystals@gmail.com', password: 'password')

s1 = Service.create(pro_id: p1.id, name: "Jus' a Cut", price: 25, description: 'Haircut with razor edge-up. Facial hair will not be touched')
s2 = Service.create(pro_id: p2.id, name: "Haircut w/Facial Trim", price: 30, description: 'Haircut and facial hair will be trimmed')
s3 = Service.create(pro_id: p3.id, name: "Haircut and Facial Hair w/ Razor", price: 40, description: 'Haircut with soothing hot steam towel to give that fresh shave feeling')
s4 = Service.create(pro_id: p4.id, name: "Edge-up", price: 15, description: 'Edge the perimeter of your hair w/ razor')
s5 = Service.create(pro_id: p3.id, name: "Kids Haircut", price: 15, description: '12 and under')
s6 = Service.create(pro_id: p2.id, name: "Teen Cut", price: 20, description: 'Over 12 years old')
s7 = Service.create(pro_id: p2.id, name: "Hairwash", price: 10, description: 'Wash and condition hair')

a1 = Appointment.create(client_id: c1.id, c_name: c1.first_name, pro_id: p1.id, pro_name: p1.first_name, service_id: s1.id, price: s1.price, startDate: "Tue Oct 01 2019 09:00:00 GMT-0500 (Central Daylight Time)", endDate: "Tue Oct 01 2019 10:00:00 GMT-0500 (Central Daylight Time)", duration: s1.duration, title: s1.name)
a2 = Appointment.create(client_id: c2.id, c_name: c2.first_name, pro_id: p2.id, pro_name: p2.first_name, service_id: s2.id, price: s2.price, startDate: "Thu Oct 03 2019 11:00:00 GMT-0500 (Central Daylight Time)", endDate: "Thu Oct 03 2019 12:00:00 GMT-0500 (Central Daylight Time)", duration: s2.duration, title: s2.name)
a3 = Appointment.create(client_id: c1.id, c_name: c1.first_name, pro_id: p3.id, pro_name: p3.first_name, service_id: s3.id, price: s3.price, startDate: "Fri Oct 04 2019 13:00:00 GMT-0500 (Central Daylight Time)", endDate: "Fri Oct 04 2019 14:00:00 GMT-0500 (Central Daylight Time)", duration: s2.duration, title: s2.name)
a4 = Appointment.create(client_id: c2.id, c_name: c2.first_name, pro_id: p2.id, pro_name: p2.first_name, service_id: s4.id, price: s4.price, startDate: "Mon Oct 07 2019 15:00:00 GMT-0500 (Central Daylight Time)", endDate: "Mon Oct 07 2019 16:00:00 GMT-0500 (Central Daylight Time)", duration: s4.duration, title: s4.name)

