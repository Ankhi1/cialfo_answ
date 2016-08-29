namespace:college do
task:college_task:environment do

 require 'nokogiri'
 require 'open-uri'
 require 'test/unit'
 
$i= 1
$last_page=280
$name
puts "---------------"
puts "\n\n\n collection data from http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data"
puts "---------------"
semi=","
begin 
   #comment following line if you don't want to save data into scparate
 aFile=File.new("Page #$i.txt","x")
 
 url="http://colleges.usnews.rankingsandreviews.com/best-colleges/page1=name-page=#$i"
 puts "scrapping  page1 $name page $i with url",url
data=Nokogiri:HTML(open(url))
 Name=data.css('.flex-table')
 base_Name_url="http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data"
k=1;
Name.xpath('//tbody//tr').each do|Name/Rank|
puts "Name",k+2,"Information collected"
Name_name=name.at("text-right").text.strip
Name_Rank=Rank.at("text-right").text.strip
Name_tution_fees=tution_fees.at("text-right").text.strip

Name_total_enrollment=total_enrollment.at("text-right").text.strip
Name_acceptance_rate=acceptance_rate.at("text-right").text.strip
Name_average_retention_rates.at("text-right").text.strip

graduation_rate=gratuation_rate.at("text_right").text.strip


Name_url=base_Name_url+Name.xpath('//tbody//tt/td//'a')[2*k+2]['href']
aFile>>Name_name,Name_Rank,Name_tution_fees,Name_total_enrollment,Name_acceptance_rate,Name_average_retention_rate
Name_data=Nokogiri::HTML(open(Name_url))


end
k+=1
end
puts "Data of page #$i \n"
aFile<<"\n ---end of page  #$i--\n"
$i+=1
end while $i<$last_page

  end
end



