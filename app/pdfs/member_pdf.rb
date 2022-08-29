class MemberPdf < Prawn::Document
    def initialize(users)
        super()
        @users = User.all
        user_id
    end
    def user_id
        table user_id_all 
            # row(0).font_style = :bold
            # coloumns(1..3).align = :right
            # self.row_colors = ["DDDDDD","FFFFFF"]
            # self.header = true 
        
    end
    def user_id_all
        [["Id","First name","Last name","DOB"]] +
        @users.map do |user|
            [user.id,user.first_name,user.last_name,user.dob]
        end
    end
end