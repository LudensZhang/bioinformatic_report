use warnings;
use FileHandle;

my $sequence ="";
open(each_line, "C:/Users/Administrator/Desktop/Bioinformatic_report1/gene.txt");
while (<each_line>){
    my $line = $_;
    chomp($line); #如果末尾有换行符，则去掉。
    if ($line!~/^>/)
 { $sequence = $sequence.$line; }}
$revcom = reverse $sequence; #将字符串倒置；
$revcom =~ tr/ACGTacgt/TGCAtgca/;  #配对


open(ln, ">C:/Users/Administrator/Desktop/Bioinformatic_report1/matched.txt");  #输出为文件
print ln $revcom;

close(each_line);