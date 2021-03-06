.class public Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;
.super Ljava/lang/Object;
.source "CMCStatusInfoV2Builder.java"


# instance fields
.field private final bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field private otherInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

.field private statusString:Lorg/spongycastle/asn1/DERUTF8String;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmc/CMCStatus;Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "cMCStatus"    # Lorg/spongycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyPartID"    # Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 18
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/CMCStatus;[Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "cMCStatus"    # Lorg/spongycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyList"    # [Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 25
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;
    .locals 5

    .prologue
    .line 57
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;-><init>(Lorg/spongycastle/asn1/cmc/CMCStatus;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/cmc/OtherStatusInfo;)V

    return-object v0
.end method

.method public setOtherInfo(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "failInfo"    # Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .prologue
    .line 36
    new-instance v0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/CMCFailInfo;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 38
    return-object p0
.end method

.method public setOtherInfo(Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "extendedFailInfo"    # Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    .prologue
    .line 43
    new-instance v0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 45
    return-object p0
.end method

.method public setOtherInfo(Lorg/spongycastle/asn1/cmc/PendInfo;)Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "pendInfo"    # Lorg/spongycastle/asn1/cmc/PendInfo;

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/spongycastle/asn1/cmc/PendInfo;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 52
    return-object p0
.end method

.method public setStatusString(Ljava/lang/String;)Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "statusString"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2Builder;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 31
    return-object p0
.end method
