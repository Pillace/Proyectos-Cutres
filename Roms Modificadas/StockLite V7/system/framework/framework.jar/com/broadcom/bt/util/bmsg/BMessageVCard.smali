.class public Lcom/broadcom/bt/util/bmsg/BMessageVCard;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageVCard.java"


# static fields
.field private static final ERR_CHECK:Z = true

.field private static final TAG:Ljava/lang/String; = "BMessageVCard"


# instance fields
.field private mParent:Lcom/broadcom/bt/util/bmsg/BMessageBase;

.field private mPreviousVCard:Lcom/broadcom/bt/util/bmsg/BMessageVCard;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V
    .registers 3
    .parameter "parent"
    .parameter "nativeRef"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageBase;

    .line 31
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setNativeRef(I)Z

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V
    .registers 4
    .parameter "previousVCard"
    .parameter "nativeRef"

    .prologue
    .line 35
    iget-object v0, p1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageBase;

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V

    .line 36
    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->mPreviousVCard:Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    .line 37
    return-void
.end method


# virtual methods
.method public addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .registers 9
    .parameter "propId"
    .parameter "value"
    .parameter "param"

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->isNativeCreated()Z

    move-result v1

    if-nez v1, :cond_9

    move-object v1, v4

    .line 119
    :goto_8
    return-object v1

    .line 110
    :cond_9
    if-ltz p1, :cond_e

    const/4 v1, 0x3

    if-le p1, v1, :cond_28

    .line 112
    :cond_e
    const-string v1, "BMessageVCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid vCard property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 113
    goto :goto_8

    .line 115
    :cond_28
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1, p1, p2, p3}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBvCardProp(IBLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, nativePropObj:I
    if-lez v0, :cond_36

    .line 117
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V

    goto :goto_8

    :cond_36
    move-object v1, v4

    .line 119
    goto :goto_8
.end method

.method public getNextvCard()Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 45
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardNext(I)I

    move-result v0

    .line 46
    .local v0, childNativeObject:I
    if-lez v0, :cond_14

    .line 47
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V

    .line 50
    .end local v0           #childNativeObject:I
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .registers 7
    .parameter "propId"

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->isNativeCreated()Z

    move-result v1

    if-nez v1, :cond_9

    move-object v1, v4

    .line 135
    :goto_8
    return-object v1

    .line 126
    :cond_9
    if-ltz p1, :cond_e

    const/4 v1, 0x3

    if-le p1, v1, :cond_28

    .line 128
    :cond_e
    const-string v1, "BMessageVCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid vCard property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 129
    goto :goto_8

    .line 131
    :cond_28
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardProp(IB)I

    move-result v0

    .line 132
    .local v0, nativePropObj:I
    if-lez v0, :cond_36

    .line 133
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V

    goto :goto_8

    :cond_36
    move-object v1, v4

    .line 135
    goto :goto_8
.end method

.method public getVersion()B
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardVer(I)B

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public setVersion(B)V
    .registers 3
    .parameter "versionId"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBvCardVer(IB)V

    .line 82
    :cond_b
    return-void
.end method
