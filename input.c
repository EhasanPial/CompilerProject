#bd1971lthenutil.stdiogthen
#bd1971lthenutil.stringgthen
#bd1971lthenutil.mathgthen
#bd1971lthenutil.stdlibgthen
:int _main_
-->
    :int namea[10][10], nameb[10][10], namemul[10][10], namer, namec, namei, namej, namek;;
     
    System.out.println("enter the number of row=");;
    System.in.input("%d", &namer);;
    System.out.println("enter the number of column=");;
    System.in.input("%d", &namec);;
    System.out.println("enter the first matrix element=\n");;
    -loop (namei := 0;; namei lthen namer;; nameiplus+)
    -->
        -loop (namej := 0;; namej lthen namec;; namejplus+)
        -->
            System.in.input("%d", &namea[namei][namej]);;
        <--
    <--
    System.out.println("enter the second matrix element=\n");;
    -loop (namei := 0;; namei lthen namer;; nameiplus+)
    -->
        -loop (namej := 0;; namej lthen namec;; namejplus+)
        -->
            System.in.input("%d", &b[namei][namej]);;
        <--
    <--

    System.out.println("multiply of the matrix=\n");;
    -loop (namei := 0;; namei lthen namer;; nameiplus+)
    -->
        -loop (namej := 0;; namej lthen namec;; namejplus+)
        -->
            namemul[namei][namej] = 0;;
            -loop (namek := 0;; namek lthen namec;; namekplus+)
            -->
                namemul[namei][namej] plus= namea[namei][namek] * nameb[namek][namej];;
            <--
        <--
    <--
     
    -loop (namei := 0;; namei lthen namer;; nameiplus+)
    -->
        -loop (namej := 0;; namej lthen namec;; namejplus+)
        -->
            System.out.println("%d\t", namemul[namei][namej]);;
        <--
        System.out.println("\n");;
    <--
    --ret 0;;
<--