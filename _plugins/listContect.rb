module Jekyll
    module ListContent
      def echo_folder(folder)
        "Your folder: " + folder
      end
  
      def list_files(folder, type="*.png")
        # Dir.glob(folder + '**/*').map{ |s| File.basename(s) }
        Dir.glob(folder + '**/*').select { |e| File.file? e }
        # files = Dir
        #   .glob(folder + "**/" + type)
        #   .select { |e| File.file? e }
        #   .join("<br>")
      end
  
      def list_folders(folder)
        Dir.glob(folder + '**/*').select { |e| File.directory? e }
        # folders = Dir
        #   .glob(folder + '**/*')
        #   .select { |e| File.directory? e }
        #   .join("<br>")
      end

      def get_dirname(folder)
        File.basename(File.dirname(folder)) + "-" + File.basename(folder)
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::ListContent)