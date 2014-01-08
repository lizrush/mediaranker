class AlbumsController < ApplicationController

# GET /albums
	def index
		@albums = Album.all
	end
	
# GET /albums/:id	
	def show
		@album = Album.find(params[:id])
	end
	
# GET /albums/new	
	def new
		@album = Album.new
	end

# POST /albums	
	def create
		@album = Album.new(album_params)

		if @album.save
			redirect_to @album, notice: 'Album was successfully created.' 
    else
      render 'new'
    end
	end

# GET /albums/:id/edit
	def edit
	end

# PATCH/PUT /albums/:id	
	def update
		if @album.update
			redirect_to @album, notice: 'Album was successfully updated.'
		else
			render 'edit'
		end
	end

	# POST albums/:id/upvote

  def upvote
    @albums = Album.find(params[:id])

    if @album.upvotes.nil?
      @album.upvotes = 1
    else
      @album.upvotes += 1
    end
    @album.save
    redirect_to :back
  end
	
# DELETE /albums/:id	
	def destroy
		@album.destroy
		redirect_to '/albums'
	end
	
private

	def album_params
		params.require(:album).permit(:title, :artist, :description) 
	end

end