bd1971lthenutil.stdiogthen
bd1971lthenutil.stringgthen
bd1971lthenutil.mathgthen
bd1971lthenutil.stdlibgthen
:int _main_
-->
    :int a_[10][10], b_[10][10], mul_[10][10], r_, c_, i_, j_, k_;;
     
    System.out.println("enter the number of row=");;
    System.in.input("%d", &r_);;
    System.out.println("enter the number of column=");;
    System.in.input("%d", &c_);;
    System.out.println("enter the first matrix element=\n");;
    -loop (i_ := 0;; i_ lthen r_;; i_plus+)
    -->
        -loop (j_ := 0;; j_ lthen c_;; j_plus+)
        -->
            System.in.input("%d", &a_[i_][j_]);;
        <--
    <--
    System.out.println("enter the second matrix element=\n");;
    -loop (i_ := 0;; i_ lthen r_;; i_plus+)
    -->
        -loop (j_ := 0;; j_ lthen c_;; j_plus+)
        -->
            System.in.input("%d", &b[i_][j_]);;
        <--
    <--

    System.out.println("multiply of the matrix=\n");;
    -loop (i_ := 0;; i_ lthen r_;; i_plus+)
    -->
        -loop (j_ := 0;; j_ lthen c_;; j_plus+)
        -->
            mul_[i_][j_] = 0;;
            -loop (k_ := 0;; k_ lthen c_;; k_plus+)
            -->
                mul_[i_][j_] plus= a_[i_][k_] * b_[k_][j_] ;;
            <--
        <--
    <--
     
    -loop (i_ := 0;; i_ lthen r_;; i_plus+)
    -->
        -loop (j_ := 0;; j_ lthen c_;; j_plus+)
        -->
            System.out.println("%d\t", mul_[i_][j_]);;
        <--
        System.out.println("\n");;
    <--
    --ret 0;;
<--