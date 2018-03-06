
require 'mysql2'
class HomeController < ApplicationController
begin
# connect to the MySQL server
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "sql123", :database => "apexindia_towerems")

rescue Mysql2::Error => e
puts "error"
ensure
# disconnect from server
end
 def show
@hh = "jhjh"
#@towerems= Towerem.all

 @fromdate = params[:fromdate]
 @todate =params[:todate]
@ctrlrid =params[:ctrlrid]


#@towerems1 = Towerem.order(:updated_date).limit(30)
#puts params[:fromdate]
#@tower=Towerem.limit(5000)
client = Mysql2::Client.new(:host => "207.38.94.33", :username => "smsuser", :password => "sias", :database => "apexindia_redamf")
#@towerems = client.query("select DATE_FORMAT(updated_time,'%H:%i:%s') as updated_time,updated_date,vol,cur_ch1,cur_ch2,cur_ch3 from merged_data_tbl order by updated_date asc,updated_time limit 20000")
@redamf = client.query("select DATE_FORMAT(updated_time, '%H:%i,:%s') as updated_time,CONCAT(merged_data_tbl_new.updated_date, ' , ', merged_data_tbl_new.updated_time) AS updated_date,avalue1,avalue2,avalue3,avalue4,avalue5,avalue6 from merged_data_tbl_new where updated_date >= '#{@fromdate}' AND updated_date <='#{@todate}' AND ctrlr_serial_no = '#{@ctrlrid}' order by updated_date asc,updated_time")

if (@redamf.count == 0)
@redamf = client.query("SELECT * FROM (select DATE_FORMAT(updated_time,'%H:%i:%s') as updated_time,DATE_FORMAT(updated_date, '%Y-%m-%d') as updated_date,avalue1,avalue2,avalue3,avalue4,avalue5,avalue6 from merged_data_tbl_new order by updated_date desc,updated_time limit 1000) sub ORDER BY updated_date asc")
end
if @fromdate==nil
@fd = @redamf.sort_by { |t| (t[:updated_date])}.first
 @fromdate = @fd['updated_date']
#@fromdate=Date.parse(fd['updated_date'])..f
end
if @todate==nil
@ld = @redamf.sort_by { |t| (t[:updated_date])}.last
  @todate = @ld['updated_date']
#@fromdate=Date.parse(fd['updated_date'])..f
end
@avalue1=[];
@timearray=[];
@avalue2=[];
@avalue3=[];
@avalue4=[];
@avalue5=[];
@avalue6=[];
@datearray=[];
#@dd=@towerems.all.map { |u| { updated_date: u.updated_date, vol: u.vol } }
#puts @dd
@redamf.each do |tim|
@avalue1.push(tim['avalue1'])
@timearray.push(tim['updated_time'])
@avalue2.push(tim['avalue2'])
@avalue3.push(tim['avalue3'])
@avalue4.push(tim['avalue4'])
@avalue5.push(tim['avalue5'])
@avalue6.push(tim['avalue6'])
@datearray.push(tim['updated_date'])
#puts tim['vol']
end
#puts @voltagearray
#puts @timearray
#puts @merged_data
end


end
