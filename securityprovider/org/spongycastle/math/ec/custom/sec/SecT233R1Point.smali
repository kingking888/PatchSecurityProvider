.class public Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT233R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 3
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 26
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 26
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 31
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    .line 32
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 38
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 31
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 87
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 p1, p0

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 94
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    .line 95
    .local v20, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 97
    .local v21, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v14, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v25, v2, v6

    .line 108
    .local v25, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .local v15, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 110
    .local v27, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v26

    .line 111
    .local v26, "Z1IsOne":Z
    move-object/from16 v19, v21

    .local v19, "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v15

    .line 112
    .local v17, "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v26, :cond_4

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 115
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 118
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v28

    .line 119
    .local v28, "Z2IsOne":Z
    move-object/from16 v18, v20

    .local v18, "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v14

    .line 120
    .local v16, "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v28, :cond_5

    .line 122
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 123
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 126
    :cond_5
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 127
    .local v8, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 129
    .local v12, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 131
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v30

    .line 144
    .local v30, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 145
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 147
    .local v22, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v15

    .line 148
    .local v23, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v22 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 150
    .local v13, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 151
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 156
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 157
    .local v24, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 158
    .local v5, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 188
    .end local v13    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .local v29, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    :goto_1
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v29, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 162
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 164
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 165
    .local v10, "AU1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 167
    .local v11, "AU2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 168
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 173
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_b
    invoke-virtual {v8, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 174
    .local v9, "ABZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v28, :cond_c

    .line 176
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 179
    :cond_c
    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 181
    .restart local v5    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v29, v9

    .line 182
    .restart local v29    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v26, :cond_9

    .line 184
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    goto :goto_1
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 70
    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 78
    .local v1, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 48
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 50
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v0

    .line 64
    :cond_1
    :goto_0
    return-object v2

    .line 56
    :cond_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 58
    .local v2, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 59
    .local v3, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 290
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;
    :cond_0
    :goto_0
    return-object p0

    .line 295
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 296
    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v6, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v7, v0, v5

    .line 303
    .local v7, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v7, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v6, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v7, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v8, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v9, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v11, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v12, "Z1IsOne":Z
    .local v13, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p0

    .line 198
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v6    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 200
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    iget-object v9, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 201
    .restart local v9    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 207
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v6    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v11, v0, v5

    .line 209
    .restart local v11    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 210
    .restart local v12    # "Z1IsOne":Z
    if-eqz v12, :cond_2

    move-object v7, v6

    .line 211
    .restart local v7    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v12, :cond_3

    move-object v13, v11

    .line 212
    .restart local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 213
    .restart local v8    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    invoke-direct {v0, v1, v8, v4, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 210
    .end local v7    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v6, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    goto :goto_1

    .line 211
    .restart local v7    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    goto :goto_2

    .line 218
    .restart local v8    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 219
    .local v2, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_5

    move-object v14, v8

    .line 221
    .local v14, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v12, :cond_6

    move-object v10, v9

    .line 222
    .local v10, "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v10, v8, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 224
    .local v3, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v14, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 219
    .end local v3    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual {v8, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_3

    .line 221
    .restart local v14    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v9, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_4
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 23
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 233
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 240
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 241
    .local v15, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .local v17, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 248
    .local v21, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v19, v2, v6

    .line 254
    .local v19, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 256
    .local v13, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 257
    .local v16, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 258
    .local v11, "L1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 259
    .local v20, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 261
    .local v12, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 262
    .local v14, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v2, v14, v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 263
    .local v8, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 264
    .local v18, "X2Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 266
    .local v9, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 273
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 276
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 278
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v8, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 281
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 282
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 283
    .local v22, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v2, v14, v6, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 285
    .local v5, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0
.end method
