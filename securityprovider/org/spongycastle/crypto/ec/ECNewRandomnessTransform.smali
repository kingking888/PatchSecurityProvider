.class public Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;
.super Ljava/lang/Object;
.source "ECNewRandomnessTransform.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private lastK:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public getTransformValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 33
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 37
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new randomness transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 43
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    .line 55
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 47
    .restart local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_2

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for new randomness transform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 53
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 9
    .param p1, "cipherText"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v5, :cond_0

    .line 69
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ECNewRandomnessTransform not initialised"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 74
    .local v1, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 76
    .local v4, "n":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 77
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 79
    .local v3, "k":Ljava/math/BigInteger;
    const/4 v5, 0x2

    new-array v2, v5, [Lorg/spongycastle/math/ec/ECPoint;

    .line 80
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v2, v7

    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 81
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v2, v8

    .line 84
    .local v2, "gamma_phi":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 86
    iput-object v3, p0, Lorg/spongycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    .line 88
    new-instance v5, Lorg/spongycastle/crypto/ec/ECPair;

    aget-object v6, v2, v7

    aget-object v7, v2, v8

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v5
.end method
