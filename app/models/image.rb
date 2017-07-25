class Image < ApplicationRecord
  def self.get_image_file_names
    root = Pathname.new(File.expand_path('../../../', __FILE__))
    files = Dir[root.join('app', 'assets', 'images', '*')]
    files.map! do |file|
      File.basename(file)
    end
  end
end
