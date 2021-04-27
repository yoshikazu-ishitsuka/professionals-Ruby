def convert_hash_syntax(old_syntax)
  # なにも変換せずに返す
  # old_syntax
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end
