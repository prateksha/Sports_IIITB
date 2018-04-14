json.extract! issued_item, :id, :Name, :RollNo, :Email, :Equipment, :IssueDate, :ReturnDate, :created_at, :updated_at
json.url issued_item_url(issued_item, format: :json)
