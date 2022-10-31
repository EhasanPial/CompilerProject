-iff(mul_[5][5] % 2 equal= 0)
    -->
        System.out.println("Even") ;;
    <--
    -else iff(mul[5][5] % 3 == 0) 
    -->
        System.out.println("Divisible by 3") ;;
    <--
    -otherwise 
    -->
         
         System.out.println(fn-sqrt(mul[5][5])) ;;
        
         System.out.println(fn-sin(mul[5][5])) ;;
        
         System.out.println(fn-cos(mul[5][5])) ;;
        
         System.out.println(fn-tan(mul[5][5])) ;;
        
         System.out.println(fn-log(mul[5][5])) ;;
        
         System.out.println(fn-pow(mul[5][5])) ;
         
    <--