
user = User.create! name: "rian", email: "rian@rod.com", password: 'rody'
Vute.create! keyword: "I am Rian.", user: user

user = User.create! name: "bob", email: "bob@rod.com", password: 'boby'
Vute.create! keyword: "I am Bob.", user: user
