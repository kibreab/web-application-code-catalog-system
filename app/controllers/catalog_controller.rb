class CatalogController < ActionController::Base
  
  def index
  	@list = Book.all
  	render 'index'
  end

  def create
    #Here we create a new book item
    @book = Book.new
    @book.remote_coverpic_url = params[:coverpic] #This allocates the image in active record and in a file
    @book.title = params[:title]
    begin
      @book.save
    rescue
      raise "exception here" 
    end

    respond_to do |format|
      #format.html # index.html.erb
      #format.xml  { render xml: book}
      format.json { render json: @book.to_json}
    end

  end

  def update_favourite
    #We are here to favourite a book
    book = Book.find(params[:id]) #this is the selected book
    book.favourite = 1 #Now the book object is made as favourite,it will be saved after this step.

    begin
      book.save 
    rescue
      raise "There was a problem in updating book" 
    end

    respond_to do |format|
      #format.html # index.html.erb
      #format.xml  { render xml: book}
      format.json { render json: book.to_json}
    end
  end

  private
  def person_params
    params.permit(:title, :coverpic)
  end
end
