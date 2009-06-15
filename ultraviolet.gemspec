spec = Gem::Specification.new do |s|
    s.name              = 'ultraviolet'
    s.author            = %q(spox)
    s.email             = %q(spox@modspox.com)
    s.version           = '0.10.3'
    s.summary           = %q(ultraviolet)
    s.platform          = Gem::Platform::RUBY
    s.has_rdoc          = true
    s.files             = Dir['**/*']
    s.rdoc_options      = %w(--title Ultraviolet --main README.txt --line-numbers)
    s.extra_rdoc_files  = %w(README.txt)
    s.require_paths     = %w(lib)
    s.executables       = %w(uv)
    s.required_ruby_version = '>= 1.9.0'
    s.add_dependency 'textpow'
    description         = []
    File.open("README.txt") do |file|
        file.each do |line|
            line.chomp!
            break if line.empty?
            description << "#{line.gsub(/\[\d\]/, '')}"
        end
    end
    s.description = description[1..-1].join(" ")
    
end
