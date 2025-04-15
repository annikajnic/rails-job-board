json.extract! job_board, :id, :company_name, :company_link, :applied, :position, :date_posted, :created_at, :updated_at
json.url job_board_url(job_board, format: :json)
