.class public Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "SecT163R2Curve.java"


# static fields
.field private static final SecT163R2_DEFAULT_COORDS:I = 0x6


# instance fields
.field protected infinity:Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 19
    const/16 v0, 0xa3

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v4, v2}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 21
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;

    invoke-direct {v0, p0, v5, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->infinity:Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;

    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 24
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "020A601907B8C953CA1481EB10512F78744A3205FD"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "040000000000000000000292FE77E70C12A4234C33"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->order:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->cofactor:Ljava/math/BigInteger;

    .line 28
    iput v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->coord:I

    .line 29
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;-><init>()V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 59
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 54
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xa3

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163R2Curve;->infinity:Lorg/spongycastle/math/ec/custom/sec/SecT163R2Point;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    return v0
.end method

.method public getK2()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x6

    return v0
.end method

.method public getK3()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x7

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xa3

    return v0
.end method

.method public isKoblitz()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 41
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
