.class public Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TaggedContentInfo.java"


# instance fields
.field private final bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

.field private final contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 0
    .param p1, "bodyPartID"    # Lorg/spongycastle/asn1/cmc/BodyPartID;
    .param p2, "contentInfo"    # Lorg/spongycastle/asn1/cms/ContentInfo;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    .line 53
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyPartID()Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public getContentInfo()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
