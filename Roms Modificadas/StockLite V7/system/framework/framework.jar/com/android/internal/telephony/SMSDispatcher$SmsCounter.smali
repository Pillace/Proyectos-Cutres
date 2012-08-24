.class Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsCounter"
.end annotation


# instance fields
.field private mCheckPeriod:I

.field private mMaxAllowed:I

.field private mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;II)V
    .registers 5
    .parameter
    .parameter "mMax"
    .parameter "mPeriod"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mMaxAllowed:I

    .line 289
    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mCheckPeriod:I

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    .line 291
    return-void
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .registers 11
    .parameter
    .parameter "smsWaiting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, sent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 312
    .local v0, ct:Ljava/lang/Long;
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS send size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v2, v3, v5

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mCheckPeriod:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_51

    .line 315
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 319
    :cond_51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p2

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mMaxAllowed:I

    if-gt v2, v3, :cond_65

    .line 320
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    if-ge v1, p2, :cond_63

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 323
    :cond_63
    const/4 v2, 0x1

    .line 325
    .end local v1           #i:I
    :goto_64
    return v2

    :cond_65
    move v2, v7

    goto :goto_64
.end method


# virtual methods
.method check(Ljava/lang/String;I)Z
    .registers 5
    .parameter "appName"
    .parameter "smsWaiting"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method
