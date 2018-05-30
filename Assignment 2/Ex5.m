function Number= A2Ex5(Number)
Number=input('please input a number:')
if Number>0
   k=Number
    if fix(Number)==Number
        i=0
      while Number>=1
            Number=Number/10
            i=i+1
      end
      Number=Number*10^i
      m=1:i
      n=0
      A=zeros(1,i)
      for m=1:i
          n=0
          while Number>=10^(i-m)
                Number=Number-10^(i-m)
                n=n+1
          end
         A(1,m)=n
      end
      B=A.^i
      H=sum(B)
      Number=k
      if H==Number
         Number
         disp('this number is an Armstrong number')
      else H~=Number==1
           while H~=Number==1
           i=0
           Number=Number+1
           J=Number
           while Number>=1
                 Number=Number/10
                 i=i+1
           end
           Number=Number*10^i
           m=1:i
           n=0
           A=zeros(1,i)
           for m=1:i
               n=0
               while Number>=10^(i-m)
                Number=Number-10^(i-m)
                n=n+1
               end
               A(1,m)=n
           end
      B=A.^i
      H=sum(B)
      Number=J
           end
      end
    else fix(Number)~=Number==1
         disp('Wrong!')
    end
else Number<=0
     disp('Wrong!')
end