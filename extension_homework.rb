
class Library

	def initialize(books)
		@books = books
	end

	def get_books()
		return @books
	end

	def get_book_by_title(book_title)
		for book in @books
			return book if book[:title] == book_title
		end
	end

	def get_rental_details_by_title(book_title)
		for book in @books
			return book[:rental_details] if book[:title] == book_title
		end
	end

	def new_book(book_title)
		@books.push({
			title: book_title,
			rental_details:{
				student_name: "",
				date: ""
			}
			})
		end

	def change_rental_details(book_title, student_name, return_date)

		book_to_change = get_book_by_title(book_title)

		if book_to_change != nil
			book_to_change[:rental_details][:student_name] = student_name
			book_to_change[:rental_details][:date] = return_date
		end
	end

	end
