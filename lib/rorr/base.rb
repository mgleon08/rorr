module Rorr
  module Base
    def templates_path
      File.expand_path("../../../templates", __FILE__)
    end

    def read_template(path)
      ERB.new(File.read(path), nil, '-').result(binding)
    end

    def generate_file_base_path
      Config.path_prefix + "/rorr/#{Config.level}"
    end
  end
end
