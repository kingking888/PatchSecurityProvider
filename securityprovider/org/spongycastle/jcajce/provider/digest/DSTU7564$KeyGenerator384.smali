.class public Lorg/spongycastle/jcajce/provider/digest/DSTU7564$KeyGenerator384;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DSTU7564.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/DSTU7564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 105
    const-string v0, "HMACDSTU7564-384"

    const/16 v1, 0x180

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 106
    return-void
.end method
