#Assembly
"Fitting the back
Fitting the front
Edgework
Fitting the neck
Saddle".split("\n").each do |x|
1.upto(7).each do |y|
g=`(cd public/uploads/ && wget "https://www.makingtheviolin.com/Building/Assembly/#{x}/#{y}.svg" --output-document "#{x.parameterize}#{y}.svg" --output-file hello#{x.parameterize}#{y}.there)`
end
end
