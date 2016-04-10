
user = User.create! name: "rian", email: "rian@vute.io", password: 'riany'
Vute.create! keyword: "I am Rian.", user: user

user = User.create! name: "bob", email: "bob@vute.io", password: 'boby'
Vute.create! keyword: "I am Bob.", user: user
