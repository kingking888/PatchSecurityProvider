.class public Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;
.super Ljava/lang/Object;
.source "ANSSINamedCurves.java"


# static fields
.field static FRP256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves$1;

    invoke-direct {v0}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves$1;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->FRP256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->objIds:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->curves:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->names:Ljava/util/Hashtable;

    .line 68
    const-string v0, "FRP256v1"

    sget-object v1, Lorg/spongycastle/asn1/anssi/ANSSIObjectIdentifiers;->FRP256v1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->FRP256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 18
    invoke-static {p0}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method private static configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 22
    return-object p0
.end method

.method static defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .prologue
    .line 61
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 75
    .local v0, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    goto :goto_0
.end method

.method public static getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 87
    sget-object v1, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    .line 88
    .local v0, "holder":Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    goto :goto_0
.end method

.method public static getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 109
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lorg/spongycastle/asn1/anssi/ANSSINamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
