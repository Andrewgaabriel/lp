{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,145) ([57408,2756,512,0,0,0,0,28735,576,0,0,0,0,33024,11027,2048,22684,1,0,0,0,2,0,16,0,128,0,0,1,0,2,16384,0,0,128,0,0,64512,456,4105,45368,32770,35264,21,19972,172,28704,1378,33024,11027,2048,22684,16385,50400,10,9986,86,14352,689,0,128,1024,44110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,50400,10,9986,86,16,32772,49280,5513,0,0,49152,7183,208,8192,0,0,0,64,16,2,0,57344,19975,72,29759,576,19972,172,28704,1378,0,0,1,0,8,16384,0,0,0,14352,689,128,32,4,0,0,0,0,8192,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Tipo","Records","num","'+'","'-'","'*'","\"&&\"","\"||\"","'^'","\"true\"","\"false\"","\"if\"","\"then\"","\"else\"","'!'","'>'","'<'","\"==\"","var","\"let\"","\"in\"","\"lam\"","'='","'{'","'}'","'.'","\"->\"","','","'|'","bool","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (14) = happyShift action_4
action_0 (15) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_18
action_3 (9) = happyShift action_19
action_3 (10) = happyShift action_20
action_3 (11) = happyShift action_21
action_3 (12) = happyShift action_22
action_3 (13) = happyShift action_23
action_3 (20) = happyShift action_24
action_3 (21) = happyShift action_25
action_3 (22) = happyShift action_26
action_3 (30) = happyShift action_27
action_3 (33) = happyShift action_28
action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (14) = happyShift action_4
action_6 (15) = happyShift action_5
action_6 (16) = happyShift action_6
action_6 (19) = happyShift action_7
action_6 (23) = happyShift action_8
action_6 (24) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (28) = happyShift action_11
action_6 (4) = happyGoto action_17
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_2
action_7 (14) = happyShift action_4
action_7 (15) = happyShift action_5
action_7 (16) = happyShift action_6
action_7 (19) = happyShift action_7
action_7 (23) = happyShift action_8
action_7 (24) = happyShift action_9
action_7 (26) = happyShift action_10
action_7 (28) = happyShift action_11
action_7 (4) = happyGoto action_16
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (23) = happyShift action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_14
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (23) = happyShift action_13
action_11 (6) = happyGoto action_12
action_11 _ = happyReduce_26

action_12 (29) = happyShift action_44
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (27) = happyShift action_43
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (21) = happyShift action_42
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (27) = happyShift action_41
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_18
action_16 (9) = happyShift action_19
action_16 (10) = happyShift action_20
action_16 (11) = happyShift action_21
action_16 (12) = happyShift action_22
action_16 (13) = happyShift action_23
action_16 (20) = happyShift action_24
action_16 (21) = happyShift action_25
action_16 (22) = happyShift action_26
action_16 (30) = happyShift action_27
action_16 (33) = happyShift action_28
action_16 _ = happyReduce_12

action_17 (8) = happyShift action_18
action_17 (9) = happyShift action_19
action_17 (10) = happyShift action_20
action_17 (11) = happyShift action_21
action_17 (12) = happyShift action_22
action_17 (13) = happyShift action_23
action_17 (17) = happyShift action_40
action_17 (20) = happyShift action_24
action_17 (21) = happyShift action_25
action_17 (22) = happyShift action_26
action_17 (30) = happyShift action_27
action_17 (33) = happyShift action_28
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (14) = happyShift action_4
action_18 (15) = happyShift action_5
action_18 (16) = happyShift action_6
action_18 (19) = happyShift action_7
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (28) = happyShift action_11
action_18 (4) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (14) = happyShift action_4
action_19 (15) = happyShift action_5
action_19 (16) = happyShift action_6
action_19 (19) = happyShift action_7
action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (28) = happyShift action_11
action_19 (4) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_2
action_20 (14) = happyShift action_4
action_20 (15) = happyShift action_5
action_20 (16) = happyShift action_6
action_20 (19) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (28) = happyShift action_11
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_2
action_21 (14) = happyShift action_4
action_21 (15) = happyShift action_5
action_21 (16) = happyShift action_6
action_21 (19) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (28) = happyShift action_11
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (14) = happyShift action_4
action_22 (15) = happyShift action_5
action_22 (16) = happyShift action_6
action_22 (19) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (28) = happyShift action_11
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (14) = happyShift action_4
action_23 (15) = happyShift action_5
action_23 (16) = happyShift action_6
action_23 (19) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (28) = happyShift action_11
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (14) = happyShift action_4
action_24 (15) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (19) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (28) = happyShift action_11
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (14) = happyShift action_4
action_25 (15) = happyShift action_5
action_25 (16) = happyShift action_6
action_25 (19) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (28) = happyShift action_11
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (14) = happyShift action_4
action_26 (15) = happyShift action_5
action_26 (16) = happyShift action_6
action_26 (19) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (28) = happyShift action_11
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (23) = happyShift action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (14) = happyShift action_4
action_28 (15) = happyShift action_5
action_28 (16) = happyShift action_6
action_28 (19) = happyShift action_7
action_28 (23) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (28) = happyShift action_11
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (8) = happyShift action_18
action_29 (9) = happyShift action_19
action_29 (10) = happyShift action_20
action_29 (11) = happyShift action_21
action_29 (12) = happyShift action_22
action_29 (13) = happyShift action_23
action_29 (20) = happyShift action_24
action_29 (21) = happyShift action_25
action_29 (22) = happyShift action_26
action_29 (30) = happyShift action_27
action_29 (33) = happyShift action_28
action_29 _ = happyReduce_18

action_30 _ = happyReduce_20

action_31 (8) = happyShift action_18
action_31 (9) = happyShift action_19
action_31 (10) = happyShift action_20
action_31 (11) = happyShift action_21
action_31 (12) = happyShift action_22
action_31 (13) = happyShift action_23
action_31 (20) = happyShift action_24
action_31 (21) = happyShift action_25
action_31 (22) = happyShift action_26
action_31 (30) = happyShift action_27
action_31 (33) = happyShift action_28
action_31 _ = happyReduce_15

action_32 (8) = happyShift action_18
action_32 (9) = happyShift action_19
action_32 (10) = happyShift action_20
action_32 (11) = happyShift action_21
action_32 (12) = happyShift action_22
action_32 (13) = happyShift action_23
action_32 (20) = happyShift action_24
action_32 (21) = happyShift action_25
action_32 (22) = happyShift action_26
action_32 (30) = happyShift action_27
action_32 (33) = happyShift action_28
action_32 _ = happyReduce_14

action_33 (8) = happyShift action_18
action_33 (9) = happyShift action_19
action_33 (10) = happyShift action_20
action_33 (11) = happyShift action_21
action_33 (12) = happyShift action_22
action_33 (13) = happyShift action_23
action_33 (20) = happyShift action_24
action_33 (21) = happyShift action_25
action_33 (22) = happyShift action_26
action_33 (30) = happyShift action_27
action_33 (33) = happyShift action_28
action_33 _ = happyReduce_13

action_34 (8) = happyShift action_18
action_34 (9) = happyShift action_19
action_34 (10) = happyShift action_20
action_34 (11) = happyShift action_21
action_34 (12) = happyShift action_22
action_34 (13) = happyShift action_23
action_34 (20) = happyShift action_24
action_34 (21) = happyShift action_25
action_34 (22) = happyShift action_26
action_34 (30) = happyShift action_27
action_34 (33) = happyShift action_28
action_34 _ = happyReduce_10

action_35 (8) = happyShift action_18
action_35 (9) = happyShift action_19
action_35 (10) = happyShift action_20
action_35 (11) = happyShift action_21
action_35 (12) = happyShift action_22
action_35 (13) = happyShift action_23
action_35 (20) = happyShift action_24
action_35 (21) = happyShift action_25
action_35 (22) = happyShift action_26
action_35 (30) = happyShift action_27
action_35 (33) = happyShift action_28
action_35 _ = happyReduce_9

action_36 (8) = happyShift action_18
action_36 (9) = happyShift action_19
action_36 (10) = happyShift action_20
action_36 (11) = happyShift action_21
action_36 (12) = happyShift action_22
action_36 (13) = happyShift action_23
action_36 (20) = happyShift action_24
action_36 (21) = happyShift action_25
action_36 (22) = happyShift action_26
action_36 (30) = happyShift action_27
action_36 (33) = happyShift action_28
action_36 _ = happyReduce_8

action_37 (8) = happyShift action_18
action_37 (9) = happyShift action_19
action_37 (10) = happyShift action_20
action_37 (11) = happyShift action_21
action_37 (12) = happyShift action_22
action_37 (13) = happyShift action_23
action_37 (20) = happyShift action_24
action_37 (21) = happyShift action_25
action_37 (22) = happyShift action_26
action_37 (30) = happyShift action_27
action_37 (33) = happyShift action_28
action_37 _ = happyReduce_7

action_38 (8) = happyShift action_18
action_38 (9) = happyShift action_19
action_38 (10) = happyShift action_20
action_38 (11) = happyShift action_21
action_38 (12) = happyShift action_22
action_38 (13) = happyShift action_23
action_38 (20) = happyShift action_24
action_38 (21) = happyShift action_25
action_38 (22) = happyShift action_26
action_38 (30) = happyShift action_27
action_38 (33) = happyShift action_28
action_38 _ = happyReduce_6

action_39 (8) = happyShift action_18
action_39 (9) = happyShift action_19
action_39 (10) = happyShift action_20
action_39 (11) = happyShift action_21
action_39 (12) = happyShift action_22
action_39 (13) = happyShift action_23
action_39 (20) = happyShift action_24
action_39 (21) = happyShift action_25
action_39 (22) = happyShift action_26
action_39 (30) = happyShift action_27
action_39 (33) = happyShift action_28
action_39 _ = happyReduce_5

action_40 (7) = happyShift action_2
action_40 (14) = happyShift action_4
action_40 (15) = happyShift action_5
action_40 (16) = happyShift action_6
action_40 (19) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (4) = happyGoto action_51
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_2
action_41 (14) = happyShift action_4
action_41 (15) = happyShift action_5
action_41 (16) = happyShift action_6
action_41 (19) = happyShift action_7
action_41 (23) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (28) = happyShift action_11
action_41 (4) = happyGoto action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_47
action_42 (21) = happyShift action_48
action_42 (34) = happyShift action_49
action_42 (5) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_2
action_43 (14) = happyShift action_4
action_43 (15) = happyShift action_5
action_43 (16) = happyShift action_6
action_43 (19) = happyShift action_7
action_43 (23) = happyShift action_8
action_43 (24) = happyShift action_9
action_43 (26) = happyShift action_10
action_43 (28) = happyShift action_11
action_43 (4) = happyGoto action_45
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_19

action_45 (8) = happyShift action_18
action_45 (9) = happyShift action_19
action_45 (10) = happyShift action_20
action_45 (11) = happyShift action_21
action_45 (12) = happyShift action_22
action_45 (13) = happyShift action_23
action_45 (20) = happyShift action_24
action_45 (21) = happyShift action_25
action_45 (22) = happyShift action_26
action_45 (30) = happyShift action_27
action_45 (32) = happyShift action_56
action_45 (33) = happyShift action_28
action_45 _ = happyReduce_25

action_46 (20) = happyShift action_55
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 (7) = happyShift action_47
action_48 (21) = happyShift action_48
action_48 (34) = happyShift action_49
action_48 (5) = happyGoto action_54
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_21

action_50 (8) = happyShift action_18
action_50 (9) = happyShift action_19
action_50 (10) = happyShift action_20
action_50 (11) = happyShift action_21
action_50 (12) = happyShift action_22
action_50 (13) = happyShift action_23
action_50 (20) = happyShift action_24
action_50 (21) = happyShift action_25
action_50 (22) = happyShift action_26
action_50 (25) = happyShift action_53
action_50 (30) = happyShift action_27
action_50 (33) = happyShift action_28
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (8) = happyShift action_18
action_51 (9) = happyShift action_19
action_51 (10) = happyShift action_20
action_51 (11) = happyShift action_21
action_51 (12) = happyShift action_22
action_51 (13) = happyShift action_23
action_51 (18) = happyShift action_52
action_51 (20) = happyShift action_24
action_51 (21) = happyShift action_25
action_51 (22) = happyShift action_26
action_51 (30) = happyShift action_27
action_51 (33) = happyShift action_28
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_2
action_52 (14) = happyShift action_4
action_52 (15) = happyShift action_5
action_52 (16) = happyShift action_6
action_52 (19) = happyShift action_7
action_52 (23) = happyShift action_8
action_52 (24) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (28) = happyShift action_11
action_52 (4) = happyGoto action_61
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_2
action_53 (14) = happyShift action_4
action_53 (15) = happyShift action_5
action_53 (16) = happyShift action_6
action_53 (19) = happyShift action_7
action_53 (23) = happyShift action_8
action_53 (24) = happyShift action_9
action_53 (26) = happyShift action_10
action_53 (28) = happyShift action_11
action_53 (4) = happyGoto action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (31) = happyShift action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_13
action_56 (6) = happyGoto action_57
action_56 _ = happyReduce_26

action_57 _ = happyReduce_24

action_58 (7) = happyShift action_2
action_58 (14) = happyShift action_4
action_58 (15) = happyShift action_5
action_58 (16) = happyShift action_6
action_58 (19) = happyShift action_7
action_58 (23) = happyShift action_8
action_58 (24) = happyShift action_9
action_58 (26) = happyShift action_10
action_58 (28) = happyShift action_11
action_58 (4) = happyGoto action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_47
action_59 (21) = happyShift action_48
action_59 (34) = happyShift action_49
action_59 (5) = happyGoto action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (8) = happyShift action_18
action_60 (9) = happyShift action_19
action_60 (10) = happyShift action_20
action_60 (11) = happyShift action_21
action_60 (12) = happyShift action_22
action_60 (13) = happyShift action_23
action_60 (20) = happyShift action_24
action_60 (21) = happyShift action_25
action_60 (22) = happyShift action_26
action_60 (30) = happyShift action_27
action_60 (33) = happyShift action_28
action_60 _ = happyReduce_16

action_61 (8) = happyShift action_18
action_61 (9) = happyShift action_19
action_61 (10) = happyShift action_20
action_61 (11) = happyShift action_21
action_61 (12) = happyShift action_22
action_61 (13) = happyShift action_23
action_61 (20) = happyShift action_24
action_61 (21) = happyShift action_25
action_61 (22) = happyShift action_26
action_61 (30) = happyShift action_27
action_61 (33) = happyShift action_28
action_61 _ = happyReduce_11

action_62 (20) = happyShift action_64
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (8) = happyShift action_18
action_63 (9) = happyShift action_19
action_63 (10) = happyShift action_20
action_63 (11) = happyShift action_21
action_63 (12) = happyShift action_22
action_63 (13) = happyShift action_23
action_63 (20) = happyShift action_24
action_63 (21) = happyShift action_25
action_63 (22) = happyShift action_26
action_63 (30) = happyShift action_27
action_63 (33) = happyShift action_28
action_63 _ = happyReduce_17

action_64 _ = happyReduce_23

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Xor happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maior happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Menor happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Igual happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Record happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ProjRecord happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_23 = happyReduce 5 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 6 happyReduction_24
happyReduction_24 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (( happy_var_1, happy_var_3 ) : happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 ([ ( happy_var_1, happy_var_3 ) ]
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_0  6 happyReduction_26
happyReduction_26  =  HappyAbsSyn6
		 ([]
	)

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenMul -> cont 10;
	TokenAnd -> cont 11;
	TokenOr -> cont 12;
	TokenXor -> cont 13;
	TokenTrue -> cont 14;
	TokenFalse -> cont 15;
	TokenIf -> cont 16;
	TokenThen -> cont 17;
	TokenElse -> cont 18;
	TokenNot -> cont 19;
	TokenMaior -> cont 20;
	TokenMenor -> cont 21;
	TokenIgual -> cont 22;
	TokenVar happy_dollar_dollar -> cont 23;
	TokenLet -> cont 24;
	TokenIn -> cont 25;
	TokenLam -> cont 26;
	TokenAtrib -> cont 27;
	TokenLBrace -> cont 28;
	TokenRBrace -> cont 29;
	TokenPonto -> cont 30;
	TokenArrow -> cont 31;
	TokenVirgula -> cont 32;
	TokenPipe -> cont 33;
	TokenBool -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
