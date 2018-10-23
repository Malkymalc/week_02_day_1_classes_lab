require('minitest/autorun')
require('minitest/rg')
require_relative('../extension_homework')

class TestStudent < MiniTest::Test

	def test_get_books
		book1 = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}
		book2 =
		{
			title: "the_prince",
			rental_details: {
				student_name:"Ross",
				date: "22/10/18"
			}
		}
		book3 =
		{
			title: "alice_in_wonderland",
			rental_details: {
				student_name: "Tom",
				date: "20/10/18"
			}
		}

		books1 = [book1,book2,book3]

		library1 = Library.new(books1)

		assert_equal([book1, book2, book3], library1.get_books)

	end

	def test_get_book_by_title
		book1 = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}
		book2 =
		{
			title: "the_prince",
			rental_details: {
				student_name:"Ross",
				date: "22/10/18"
			}
		}
		book3 =
		{
			title: "alice_in_wonderland",
			rental_details: {
				student_name: "Tom",
				date: "20/10/18"
			}
		}

		books1 = [book1,book2,book3]

		library1 = Library.new(books1)

		assert_equal(book1, library1.get_book_by_title("lord_of_the_rings"))
	end

	def test_get_rental_detals_by_title

		book1 = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}
		book2 =
		{
			title: "the_prince",
			rental_details: {
				student_name:"Ross",
				date: "22/10/18"
			}
		}
		book3 =
		{
			title: "alice_in_wonderland",
			rental_details: {
				student_name: "Tom",
				date: "20/10/18"
			}
		}

		books1 = [book1,book2,book3]

		library1 = Library.new(books1)

		assert_equal(book1[:rental_details], library1.get_rental_details_by_title("lord_of_the_rings"))
	end

	def test_new_book
		book1 = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}
		book2 =
		{
			title: "the_prince",
			rental_details: {
				student_name:"Ross",
				date: "22/10/18"
			}
		}
		book3 =
		{
			title: "alice_in_wonderland",
			rental_details: {
				student_name: "Tom",
				date: "20/10/18"
			}
		}

		books1 = [book1,book2,book3]

		library1 = Library.new(books1)

		library1.new_book("bottle")

		book4 = {title: "bottle",
			rental_details:{
				student_name: "",
				date: ""
			}
		}

		assert_equal([book1, book2, book3, book4], library1.get_books)

	end

	def test_change_rental_details
		book1 = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}
		book2 =
		{
			title: "the_prince",
			rental_details: {
				student_name:"Ross",
				date: "22/10/18"
			}
		}
		book3 =
		{
			title: "alice_in_wonderland",
			rental_details: {
				student_name: "Tom",
				date: "20/10/18"
			}
		}

		books1 = [book1,book2,book3]

		library1 = Library.new(books1)

		library1.change_rental_details("the_prince", "Emily", "24/10/18")



		assert_equal("Emily", book2[:rental_details][:student_name])
		assert_equal("24/10/18", book2[:rental_details][:date])

	end


end
