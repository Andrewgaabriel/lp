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
happyExpList = Happy_Data_Array.listArray (0,201) ([57408,2756,256,0,0,0,61440,48959,10,0,0,0,0,19972,172,14352,689,0,0,0,256,0,1024,0,4096,0,0,16,0,16,0,1,0,256,0,0,65280,44023,0,0,4096,45368,16386,50400,10,4993,43,19972,172,14352,689,57408,2756,33024,11027,1024,44110,4096,45368,2,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14352,689,57408,2756,256,64,1028,44110,0,0,49152,64767,170,8192,0,0,0,16,16388,0,0,65280,45043,64512,45039,4098,45368,16386,50400,10,0,256,0,1024,0,16,0,0,33024,11027,1024,256,16,0,0,0,0,8192,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Tipo","Records","num","'+'","'-'","'*'","\"&&\"","\"||\"","'^'","\"true\"","\"false\"","\"if\"","\"then\"","\"else\"","'!'","'>'","'<'","\"==\"","var","\"let\"","\"in\"","\"lam\"","'='","'{'","'}'","'.'","\"->\"","','","bool","%eof"]
        bit_start = st Prelude.* 34
        bit_end = (st Prelude.+ 1) Prelude.* 34
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..33]
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

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_19
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (13) = happyShift action_24
action_3 (14) = happyShift action_4
action_3 (15) = happyShift action_5
action_3 (16) = happyShift action_6
action_3 (19) = happyShift action_7
action_3 (20) = happyShift action_25
action_3 (21) = happyShift action_26
action_3 (22) = happyShift action_27
action_3 (23) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (28) = happyShift action_11
action_3 (30) = happyShift action_28
action_3 (34) = happyAccept
action_3 (4) = happyGoto action_18
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

action_12 (29) = happyShift action_43
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (27) = happyShift action_42
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (21) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (27) = happyShift action_40
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_19
action_16 (9) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_22
action_16 (12) = happyShift action_23
action_16 (13) = happyShift action_24
action_16 (14) = happyShift action_4
action_16 (15) = happyShift action_5
action_16 (16) = happyShift action_6
action_16 (19) = happyShift action_7
action_16 (20) = happyShift action_25
action_16 (21) = happyShift action_26
action_16 (22) = happyShift action_27
action_16 (23) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (28) = happyShift action_11
action_16 (30) = happyShift action_28
action_16 (4) = happyGoto action_18
action_16 _ = happyReduce_12

action_17 (7) = happyShift action_2
action_17 (8) = happyShift action_19
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_22
action_17 (12) = happyShift action_23
action_17 (13) = happyShift action_24
action_17 (14) = happyShift action_4
action_17 (15) = happyShift action_5
action_17 (16) = happyShift action_6
action_17 (17) = happyShift action_39
action_17 (19) = happyShift action_7
action_17 (20) = happyShift action_25
action_17 (21) = happyShift action_26
action_17 (22) = happyShift action_27
action_17 (23) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (28) = happyShift action_11
action_17 (30) = happyShift action_28
action_17 (4) = happyGoto action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_19
action_18 (9) = happyShift action_20
action_18 (10) = happyShift action_21
action_18 (11) = happyShift action_22
action_18 (12) = happyShift action_23
action_18 (13) = happyShift action_24
action_18 (14) = happyShift action_4
action_18 (15) = happyShift action_5
action_18 (16) = happyShift action_6
action_18 (19) = happyShift action_7
action_18 (20) = happyShift action_25
action_18 (21) = happyShift action_26
action_18 (22) = happyShift action_27
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (28) = happyShift action_11
action_18 (30) = happyShift action_28
action_18 (4) = happyGoto action_18
action_18 _ = happyReduce_18

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

action_27 (7) = happyShift action_2
action_27 (14) = happyShift action_4
action_27 (15) = happyShift action_5
action_27 (16) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (28) = happyShift action_11
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (23) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_20

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_19
action_30 (9) = happyShift action_20
action_30 (10) = happyShift action_21
action_30 (11) = happyShift action_22
action_30 (12) = happyShift action_23
action_30 (13) = happyShift action_24
action_30 (14) = happyShift action_4
action_30 (15) = happyShift action_5
action_30 (16) = happyShift action_6
action_30 (19) = happyShift action_7
action_30 (20) = happyShift action_25
action_30 (21) = happyShift action_26
action_30 (22) = happyShift action_27
action_30 (23) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (28) = happyShift action_11
action_30 (30) = happyShift action_28
action_30 (4) = happyGoto action_18
action_30 _ = happyReduce_15

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_19
action_31 (9) = happyShift action_20
action_31 (10) = happyShift action_21
action_31 (11) = happyShift action_22
action_31 (12) = happyShift action_23
action_31 (13) = happyShift action_24
action_31 (14) = happyShift action_4
action_31 (15) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (19) = happyShift action_7
action_31 (20) = happyShift action_25
action_31 (21) = happyShift action_26
action_31 (22) = happyShift action_27
action_31 (23) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (30) = happyShift action_28
action_31 (4) = happyGoto action_18
action_31 _ = happyReduce_14

action_32 (7) = happyShift action_2
action_32 (8) = happyShift action_19
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_21
action_32 (11) = happyShift action_22
action_32 (12) = happyShift action_23
action_32 (13) = happyShift action_24
action_32 (14) = happyShift action_4
action_32 (15) = happyShift action_5
action_32 (16) = happyShift action_6
action_32 (19) = happyShift action_7
action_32 (20) = happyShift action_25
action_32 (21) = happyShift action_26
action_32 (22) = happyShift action_27
action_32 (23) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (30) = happyShift action_28
action_32 (4) = happyGoto action_18
action_32 _ = happyReduce_13

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_19
action_33 (9) = happyShift action_20
action_33 (10) = happyShift action_21
action_33 (11) = happyShift action_22
action_33 (12) = happyShift action_23
action_33 (13) = happyShift action_24
action_33 (14) = happyShift action_4
action_33 (15) = happyShift action_5
action_33 (16) = happyShift action_6
action_33 (19) = happyShift action_7
action_33 (20) = happyShift action_25
action_33 (21) = happyShift action_26
action_33 (22) = happyShift action_27
action_33 (23) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (28) = happyShift action_11
action_33 (30) = happyShift action_28
action_33 (4) = happyGoto action_18
action_33 _ = happyReduce_10

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_19
action_34 (9) = happyShift action_20
action_34 (10) = happyShift action_21
action_34 (11) = happyShift action_22
action_34 (12) = happyShift action_23
action_34 (13) = happyShift action_24
action_34 (14) = happyShift action_4
action_34 (15) = happyShift action_5
action_34 (16) = happyShift action_6
action_34 (19) = happyShift action_7
action_34 (20) = happyShift action_25
action_34 (21) = happyShift action_26
action_34 (22) = happyShift action_27
action_34 (23) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (28) = happyShift action_11
action_34 (30) = happyShift action_28
action_34 (4) = happyGoto action_18
action_34 _ = happyReduce_9

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_19
action_35 (9) = happyShift action_20
action_35 (10) = happyShift action_21
action_35 (11) = happyShift action_22
action_35 (12) = happyShift action_23
action_35 (13) = happyShift action_24
action_35 (14) = happyShift action_4
action_35 (15) = happyShift action_5
action_35 (16) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (20) = happyShift action_25
action_35 (21) = happyShift action_26
action_35 (22) = happyShift action_27
action_35 (23) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (28) = happyShift action_11
action_35 (30) = happyShift action_28
action_35 (4) = happyGoto action_18
action_35 _ = happyReduce_8

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_19
action_36 (9) = happyShift action_20
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_22
action_36 (12) = happyShift action_23
action_36 (13) = happyShift action_24
action_36 (14) = happyShift action_4
action_36 (15) = happyShift action_5
action_36 (16) = happyShift action_6
action_36 (19) = happyShift action_7
action_36 (20) = happyShift action_25
action_36 (21) = happyShift action_26
action_36 (22) = happyShift action_27
action_36 (23) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (28) = happyShift action_11
action_36 (30) = happyShift action_28
action_36 (4) = happyGoto action_18
action_36 _ = happyReduce_7

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_19
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_22
action_37 (12) = happyShift action_23
action_37 (13) = happyShift action_24
action_37 (14) = happyShift action_4
action_37 (15) = happyShift action_5
action_37 (16) = happyShift action_6
action_37 (19) = happyShift action_7
action_37 (20) = happyShift action_25
action_37 (21) = happyShift action_26
action_37 (22) = happyShift action_27
action_37 (23) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (28) = happyShift action_11
action_37 (30) = happyShift action_28
action_37 (4) = happyGoto action_18
action_37 _ = happyReduce_6

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_19
action_38 (9) = happyShift action_20
action_38 (10) = happyShift action_21
action_38 (11) = happyShift action_22
action_38 (12) = happyShift action_23
action_38 (13) = happyShift action_24
action_38 (14) = happyShift action_4
action_38 (15) = happyShift action_5
action_38 (16) = happyShift action_6
action_38 (19) = happyShift action_7
action_38 (20) = happyShift action_25
action_38 (21) = happyShift action_26
action_38 (22) = happyShift action_27
action_38 (23) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (28) = happyShift action_11
action_38 (30) = happyShift action_28
action_38 (4) = happyGoto action_18
action_38 _ = happyReduce_5

action_39 (7) = happyShift action_2
action_39 (14) = happyShift action_4
action_39 (15) = happyShift action_5
action_39 (16) = happyShift action_6
action_39 (19) = happyShift action_7
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (28) = happyShift action_11
action_39 (4) = happyGoto action_50
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_2
action_40 (14) = happyShift action_4
action_40 (15) = happyShift action_5
action_40 (16) = happyShift action_6
action_40 (19) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (4) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_46
action_41 (21) = happyShift action_47
action_41 (33) = happyShift action_48
action_41 (5) = happyGoto action_45
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_2
action_42 (14) = happyShift action_4
action_42 (15) = happyShift action_5
action_42 (16) = happyShift action_6
action_42 (19) = happyShift action_7
action_42 (23) = happyShift action_8
action_42 (24) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (28) = happyShift action_11
action_42 (4) = happyGoto action_44
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_19

action_44 (7) = happyShift action_2
action_44 (8) = happyShift action_19
action_44 (9) = happyShift action_20
action_44 (10) = happyShift action_21
action_44 (11) = happyShift action_22
action_44 (12) = happyShift action_23
action_44 (13) = happyShift action_24
action_44 (14) = happyShift action_4
action_44 (15) = happyShift action_5
action_44 (16) = happyShift action_6
action_44 (19) = happyShift action_7
action_44 (20) = happyShift action_25
action_44 (21) = happyShift action_26
action_44 (22) = happyShift action_27
action_44 (23) = happyShift action_8
action_44 (24) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (28) = happyShift action_11
action_44 (30) = happyShift action_28
action_44 (32) = happyShift action_55
action_44 (4) = happyGoto action_18
action_44 _ = happyReduce_25

action_45 (20) = happyShift action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_22

action_47 (7) = happyShift action_46
action_47 (21) = happyShift action_47
action_47 (33) = happyShift action_48
action_47 (5) = happyGoto action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_21

action_49 (7) = happyShift action_2
action_49 (8) = happyShift action_19
action_49 (9) = happyShift action_20
action_49 (10) = happyShift action_21
action_49 (11) = happyShift action_22
action_49 (12) = happyShift action_23
action_49 (13) = happyShift action_24
action_49 (14) = happyShift action_4
action_49 (15) = happyShift action_5
action_49 (16) = happyShift action_6
action_49 (19) = happyShift action_7
action_49 (20) = happyShift action_25
action_49 (21) = happyShift action_26
action_49 (22) = happyShift action_27
action_49 (23) = happyShift action_8
action_49 (24) = happyShift action_9
action_49 (25) = happyShift action_52
action_49 (26) = happyShift action_10
action_49 (28) = happyShift action_11
action_49 (30) = happyShift action_28
action_49 (4) = happyGoto action_18
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_2
action_50 (8) = happyShift action_19
action_50 (9) = happyShift action_20
action_50 (10) = happyShift action_21
action_50 (11) = happyShift action_22
action_50 (12) = happyShift action_23
action_50 (13) = happyShift action_24
action_50 (14) = happyShift action_4
action_50 (15) = happyShift action_5
action_50 (16) = happyShift action_6
action_50 (18) = happyShift action_51
action_50 (19) = happyShift action_7
action_50 (20) = happyShift action_25
action_50 (21) = happyShift action_26
action_50 (22) = happyShift action_27
action_50 (23) = happyShift action_8
action_50 (24) = happyShift action_9
action_50 (26) = happyShift action_10
action_50 (28) = happyShift action_11
action_50 (30) = happyShift action_28
action_50 (4) = happyGoto action_18
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyShift action_2
action_51 (14) = happyShift action_4
action_51 (15) = happyShift action_5
action_51 (16) = happyShift action_6
action_51 (19) = happyShift action_7
action_51 (23) = happyShift action_8
action_51 (24) = happyShift action_9
action_51 (26) = happyShift action_10
action_51 (28) = happyShift action_11
action_51 (4) = happyGoto action_60
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
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (31) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (31) = happyShift action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_13
action_55 (6) = happyGoto action_56
action_55 _ = happyReduce_26

action_56 _ = happyReduce_24

action_57 (7) = happyShift action_2
action_57 (14) = happyShift action_4
action_57 (15) = happyShift action_5
action_57 (16) = happyShift action_6
action_57 (19) = happyShift action_7
action_57 (23) = happyShift action_8
action_57 (24) = happyShift action_9
action_57 (26) = happyShift action_10
action_57 (28) = happyShift action_11
action_57 (4) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_46
action_58 (21) = happyShift action_47
action_58 (33) = happyShift action_48
action_58 (5) = happyGoto action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_2
action_59 (8) = happyShift action_19
action_59 (9) = happyShift action_20
action_59 (10) = happyShift action_21
action_59 (11) = happyShift action_22
action_59 (12) = happyShift action_23
action_59 (13) = happyShift action_24
action_59 (14) = happyShift action_4
action_59 (15) = happyShift action_5
action_59 (16) = happyShift action_6
action_59 (19) = happyShift action_7
action_59 (20) = happyShift action_25
action_59 (21) = happyShift action_26
action_59 (22) = happyShift action_27
action_59 (23) = happyShift action_8
action_59 (24) = happyShift action_9
action_59 (26) = happyShift action_10
action_59 (28) = happyShift action_11
action_59 (30) = happyShift action_28
action_59 (4) = happyGoto action_18
action_59 _ = happyReduce_16

action_60 (7) = happyShift action_2
action_60 (8) = happyShift action_19
action_60 (9) = happyShift action_20
action_60 (10) = happyShift action_21
action_60 (11) = happyShift action_22
action_60 (12) = happyShift action_23
action_60 (13) = happyShift action_24
action_60 (14) = happyShift action_4
action_60 (15) = happyShift action_5
action_60 (16) = happyShift action_6
action_60 (19) = happyShift action_7
action_60 (20) = happyShift action_25
action_60 (21) = happyShift action_26
action_60 (22) = happyShift action_27
action_60 (23) = happyShift action_8
action_60 (24) = happyShift action_9
action_60 (26) = happyShift action_10
action_60 (28) = happyShift action_11
action_60 (30) = happyShift action_28
action_60 (4) = happyGoto action_18
action_60 _ = happyReduce_11

action_61 (20) = happyShift action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_2
action_62 (8) = happyShift action_19
action_62 (9) = happyShift action_20
action_62 (10) = happyShift action_21
action_62 (11) = happyShift action_22
action_62 (12) = happyShift action_23
action_62 (13) = happyShift action_24
action_62 (14) = happyShift action_4
action_62 (15) = happyShift action_5
action_62 (16) = happyShift action_6
action_62 (19) = happyShift action_7
action_62 (20) = happyShift action_25
action_62 (21) = happyShift action_26
action_62 (22) = happyShift action_27
action_62 (23) = happyShift action_8
action_62 (24) = happyShift action_9
action_62 (26) = happyShift action_10
action_62 (28) = happyShift action_11
action_62 (30) = happyShift action_28
action_62 (4) = happyGoto action_18
action_62 _ = happyReduce_17

action_63 _ = happyReduce_23

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

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

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
	action 34 34 notHappyAtAll (HappyState action) sts stk []

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
	TokenBool -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
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
