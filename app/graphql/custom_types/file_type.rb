class CustomTypes::FileType < Types::BaseScalar
    def self.coerce_input(file, context)
      ActionDispatch::Http::UploadedFile.new(
        filename: file.original_filename,
        type: file.content_type,
        headers: file.headers,
        tempfile: file.tempfile,
      )
    end
  end