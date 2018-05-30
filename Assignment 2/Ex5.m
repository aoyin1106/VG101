function y= Ex5(Number)
if Number>0;
   k=Number;
    if fix(Number)==Number;
        i=0;
      while Number>=1;
            Number=Number/10;
            i=i+1;
      end
      Number=Number*10^i;
      m=1:i;
      n=0;
      A=zeros(1,i);
      for m=1:i;
          n=0;
          while Number>=10^(i-m);
                Number=Number-10^(i-m);
                n=n+1;
          end
         A(1,m)=n;
      end
      B=A.^i;
      H=sum(B);
      Number=k;
      if H==Number;
         y=Number;
      else H~=Number==1;
           while H~=Number==1;
           i=0;
           Number=Number+1;
           J=Number;
           while Number>=1;
                 Number=Number/10;
                 i=i+1;
           end
           Number=Number*10^i;
           m=1:i;
           n=0;
           A=zeros(1,i);
           for m=1:i;
               n=0;
               while Number>=10^(i-m);
                Number=Number-10^(i-m);
                n=n+1;
               end
               A(1,m)=n;
           end
      B=A.^i;
      H=sum(B);
      Number=J;
           end
      y=J;
      end
    else fix(Number)~=Number==1;
         y=0;
    end
else Number<=0;
     y=0;
end
end
