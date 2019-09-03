Aws.config.update({
     region: ‘us-east-1’,
     credentials: Aws::Credentials.new(ENV[‘AKIAJNKWO5WYV45FYBUA’], ENV[‘KAkVvGYjfh+hYwANxKDfpM0XSw6xbxK9O6KUtJyY’]),
    })
    
    S3_BUCKET = Aws::S3::Resource.new.bucket(ENV[‘lnza.me’])