.class public Lorg/spongycastle/jcajce/provider/digest/DSTU7564$DigestDSTU7564;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "DSTU7564.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/DSTU7564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestDSTU7564"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 24
    new-instance v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;

    .line 31
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
    new-instance v2, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/DSTU7564$DigestDSTU7564;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    .line 33
    return-object v0
.end method
