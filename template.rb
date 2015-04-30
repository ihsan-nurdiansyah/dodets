module Template
  def template(source_template, req_id)
#parameter is string, doesn't need to convert anymore
#template = String.new(source_template)

# use function of gsub on rails
    # Substitute for %CODE%
#    template_split_begin = template.index("%CODE%")
#    template_split_end = template_split_begin + 6
#    template_part_one =
#      String.new(template[0..(template_split_begin-1)])
#    template_part_two =
#      String.new(template[template_split_end..template.length])

# use req_id directly
#    code = String.new(req_id)
#    template =
#      String.new(template_part_one + code + template_part_two)

     template = source_template.gsub("%CODE%", req_id)

    # Substitute for %ALTCODE%
#    template_split_begin = template.index("%ALTCODE%")
#    template_split_end = template_split_begin + 9
#    template_part_one =
#      String.new(template[0..(template_split_begin-1)])
#    template_part_two =
#      String.new(template[template_split_end..template.length])

    altcode = req_id[0..4] + "-" + req_id[5..7]
    template.gsub("%ALTCODE%", altcode)
#    template_part_one + altcode + template_part_two
  end
end
