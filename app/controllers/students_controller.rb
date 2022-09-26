class StudentsController < ActionController::API
    def index
		data = Student.all
		render(json: data)
	end

	def grades
		data = Student.all.order(grade: :desc)
		render(json: data)
	end

	def highest_grade
		# data = Student.all.order(grade: :desc).limit(1)
		data = Student.all.order(grade: :desc)[0]
		render(json: data)
	end
end