require 'json'

module Ruby2JSON
  class Parser

    def self.parse(data)
      json_str = data
        .gsub(/\r?\n/, '')
        .gsub('=>', ':')
        .gsub(%r(\bnil\b), 'null')
      JSON.load(json_str)
    end

    def self.generate(data)
      JSON.generate(parse(data))
    end

    def self.pretty_generate(data)
      JSON.pretty_generate(parse(data))
    end

  end
end
