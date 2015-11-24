	user1 = User.new(business_name: 'Jenna Cole Photography', username: 'jennacole', email: 'jenna@jennacole.com')
	user1.password_hash = "jennacole"
	user1.save

	user2 = User.new(business_name: 'That Wife',username: "thatwife", email: 'thatwife@gmail.com')
	user2.password_hash = "thatwife"
	user2.save

	user1.photos.create(url: 'http://thatwifeblog.com/wp-content/uploads/2015/08/20150808-DD17783And730002-R2-0652.jpg', format: '35mm', stock: 'Acros 100', camera: 'Canon AE-1', lens: '50mm', lighting: 'Mostly sunny', rating: '100', lab: 'The Find Lab')


	user2.photos.create(url: '	http://thatwifeblog.com/wp-content/uploads/2015/08/those-kids-in-SF-650x521.jpg', format: '120mm', stock: 'Porta 160vc', camera: 'Mamiya RZ67 Pro II', lens: '70mm', lighting: 'Cloudy with patches of sun', rating: '80', lab: 'The Find Lab', expiration: '10+ years')

	user1.photos.create(url: 'http://thatwifeblog.com/wp-content/uploads/2014/10/SSanderson001003-R7-E077-Edit.jpg', format: '120mm', stock: 'Portra 800', camera: 'Mamiya 645', lighting: 'Sunny', rating: '400', lab: 'The Find Lab', processing: 'Push +1', scanner: 'Frontier')


	






  	


