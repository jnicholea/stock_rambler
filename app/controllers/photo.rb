##index##
get '/photos'  do
	@photos = Photo.all

	erb :'photos/index'
end

##new##
get '/photos/new'  do
  # @photo = Photo.new
	erb :'_new_photo', layout: false
end

##create##
post '/photos'  do
	# @photo = Photo.new(url: params[:url], format: params[:format], stock: params[:stock], camera: params[:camera], lens: params[:lens], lighting: params[:lighting], rating: params[:rating], lab: params[:lab], processing: params[:processing], scanner: params[:scanner], expiration: params[:expiration])
	# @photo.photographer_id = current_user.id
	# if @photo.save
	# 	redirect "photos/#{@photo.id}"
	# else
	# 	@error = "Please select all required categories"
	# 	erb :'photos/new'
	# end
	photo = Photo.create(params[:photo])
	photo.photographer_id = current_user.id

	erb :'_add_new_photo', layout: false, locals:{photographer_id: photo.photographer_id, url: photo.url, format: photo.format, stock: photo.stock, camera: photo.camera, lens: photo.lens, lighting: photo.lighting, rating: photo.rating, lab: photo.lab, processing: photo.processing, scanner: photo.scanner, expiration: photo.expiration}
end

##show##
get '/photos/:id'  do
	@photo = Photo.find(params[:id])
	erb :'/photos/show'
end

##edit##
get '/photos/:id/edit'  do
	@photo = Photo.find(params[:id])
	erb :'/photos/edit'
end

##update##
put '/photos/:id'  do
	@photo = Photo.find(params[:id])
	@photo.update(params)
	redirect "/photos/#{@photo.id}"
end

##delete##
delete '/photos/:id'  do
	@photo = Photo.find(params[:id])
	@photo.destroy
	redirect "/"
end


