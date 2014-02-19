print "enter the name of the file to be opened for sorting\n";
$f1=<>;
#open(DATA,"<$f1");
open(FH,"<$f1");
@test=<FH>;
@articles=sort @test;
close(FH);
print "enter the name of the file to keep the sorted data\n";
$f2=<>;
open(DATA11,">$f2");
print DATA11 @articles;
close(DATA11);
open(DATA,"<$f2");
$i=0;
START:
#for($k=1;$k<=24;$k++){
 $_=<DATA>;
 $var=$_;
 @var1=split('\t',$var);
 print DATA1 $_;
 while(defined($_=<DATA>))
 {
  $var2=$_;
  @var3=split('\t',$var2);
  if($i==0){
  open(DATA1,">$var3[0]");
  print DATA1 $var;
  $i++;}
  if($var1[0] eq $var3[0]){
  print DATA1 $_;}
  else{
    open(DATA1,">$var3[0]");
    print DATA1 $var2;
    goto START;}  
  }
close(DATA); 
close(DATA1);
