MODULE Module1
    VAR bool value;
        CONST robtarget Home:=[[472.221367097,-882.727,1165],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[300.224086373,313.272936929,420.000073654],[-0.000000284,0.000000194,1,-0.000000149],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[300.224119695,313.272954476,239.999979637],[-0.000000267,0.000000194,1,-0.00000014],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[300.224073663,-1524.727216206,420.000075687],[-0.000000372,0.000000252,1,-0.00000014],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[300.224095291,-1524.727007335,240.000010396],[-0.000000007,0,1,0.000000002],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Mirgi
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    VAR bool detected;
    PROC main()
        Path_10;
    ENDPROC
    PROC Path_10()
        MoveJ Home,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
        MoveL Target_10,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
        MoveL Target_20,v1000,fine,My_Mechanism_1\WObj:=Workobject_3;
        IF sensor = 1 THEN
            PulseDO Attach;
            WaitTime 1;
            MoveL Target_10,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_30,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_40,v1000,fine,My_Mechanism_1\WObj:=Workobject_3;
            PulseDO Detach;
            WaitTime 1;
            MoveL Target_30,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveJ Home,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
        ELSE
            MoveJ Home,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_30,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_40,v1000,fine,My_Mechanism_1\WObj:=Workobject_3;
            PulseDO Attach;
            WaitTime 1;
            MoveL Target_30,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_10,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveL Target_20,v1000,fine,My_Mechanism_1\WObj:=Workobject_3;
            PulseDO Detach;
            WaitTime 1;
            MoveL Target_10,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
            MoveJ Home,v1000,z100,My_Mechanism_1\WObj:=Workobject_3;
        ENDIF
    ENDPROC
ENDMODULE