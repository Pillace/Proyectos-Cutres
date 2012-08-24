.class public Lcom/android/internal/telephony/sip/SipPhone;
.super Lcom/android/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$1;,
        Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_MAKE_CALL:I = 0xf


# instance fields
.field private backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    .registers 8
    .parameter "context"
    .parameter "notifier"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 67
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SipPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 71
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    .line 72
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const-string v4, "cannot dial in current state"

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_13

    .line 165
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_20

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 170
    :cond_20
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_32

    .line 172
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_32
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 177
    :try_start_38
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_3d
    .catch Landroid/net/sip/SipException; {:try_start_38 .. :try_end_3d} :catch_3f

    move-result-object v0

    .line 178
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 179
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :catch_3f
    move-exception v2

    move-object v1, v2

    .line 180
    .local v1, e:Landroid/net/sip/SipException;
    const-string v2, "SipPhone"

    const-string v3, "dial()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .registers 5
    .parameter "sipAudioCall"

    .prologue
    .line 873
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 885
    :goto_8
    return-object v1

    .line 874
    :cond_9
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 875
    .local v0, sessionState:I
    packed-switch v0, :pswitch_data_3e

    .line 884
    :pswitch_10
    const-string v1, "SipPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 876
    :pswitch_2b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 878
    :pswitch_2e
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 879
    :pswitch_31
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 880
    :pswitch_34
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 881
    :pswitch_37
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 882
    :pswitch_3a
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_8

    .line 875
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_10
        :pswitch_10
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method private getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .registers 6
    .parameter "p"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, domain:Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 342
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_17
    return-object v1

    :cond_18
    move-object v1, v0

    goto :goto_17
.end method

.method private getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .registers 4
    .parameter "p"

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 126
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2b

    .line 129
    :cond_17
    const-string v1, "SipPhone"

    const-string v2, "acceptCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 134
    :cond_2b
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTake(Ljava/lang/Object;)Z
    .registers 12
    .parameter "incomingCall"

    .prologue
    const/4 v9, 0x0

    const-string v5, "SipPhone"

    .line 88
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 89
    :try_start_6
    instance-of v6, p1, Landroid/net/sip/SipAudioCall;

    if-nez v6, :cond_d

    monitor-exit v5

    move v5, v9

    .line 121
    :goto_c
    return v5

    .line 90
    :cond_d
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1c

    monitor-exit v5

    move v5, v9

    goto :goto_c

    .line 94
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_37

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 96
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_a1

    move v5, v9

    goto :goto_c

    .line 100
    :cond_37
    :try_start_37
    move-object v0, p1

    check-cast v0, Landroid/net/sip/SipAudioCall;

    move-object v4, v0

    .line 101
    .local v4, sipAudioCall:Landroid/net/sip/SipAudioCall;
    const-string v6, "SipPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+++ taking call from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, localUri:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 105
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 106
    .local v3, makeCallWait:Z
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6, v4, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Landroid/net/sip/SipAudioCall;Z)V

    .line 107
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_91

    .line 110
    const-string v6, "SipPhone"

    const-string v7, "    call cancelled !!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_91
    .catchall {:try_start_37 .. :try_end_91} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_91} :catch_96

    .line 113
    :cond_91
    const/4 v6, 0x1

    :try_start_92
    monitor-exit v5

    move v5, v6

    goto/16 :goto_c

    .line 115
    .end local v2           #localUri:Ljava/lang/String;
    .end local v3           #makeCallWait:Z
    .end local v4           #sipAudioCall:Landroid/net/sip/SipAudioCall;
    :catch_96
    move-exception v6

    move-object v1, v6

    .line 119
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 121
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9d
    monitor-exit v5

    move v5, v9

    goto/16 :goto_c

    .line 122
    :catchall_a1
    move-exception v6

    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_92 .. :try_end_a3} :catchall_a1

    throw v6
.end method

.method public canTransfer()Z
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 7
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .registers 3

    .prologue
    .line 229
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public conference()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 199
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_4a

    .line 202
    :cond_17
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong state to merge calls: fg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1

    .line 206
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 207
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_47

    .line 208
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 211
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 212
    :try_start_3
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-nez v1, :cond_33

    .line 213
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local p1
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1

    .line 216
    .restart local p1
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 217
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    .line 218
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 155
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 157
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .parameter "dialString"
    .parameter "uusinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/android/internal/telephony/sip/SipPhone;)Z
    .registers 4
    .parameter "phone"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public explicitCallTransfer()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public getActiveDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 2

    .prologue
    .line 1032
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .registers 3

    .prologue
    .line 945
    const-string v0, "SipPhone"

    const-string v1, "SipPhonegetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .registers 2

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1010
    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingMode()I
    .registers 2

    .prologue
    .line 1041
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDNavailable()Z
    .registers 2

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 969
    return-void
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdnavailable()Z
    .registers 2

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    goto :goto_12
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 270
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 271
    return-void
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .registers 2

    .prologue
    .line 964
    const/4 v0, 0x1

    return v0
.end method

.method public getSMSavailable()Z
    .registers 2

    .prologue
    .line 960
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initiateFakecall()V
    .registers 1

    .prologue
    .line 1001
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 140
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 142
    const-string v1, "SipPhone"

    const-string/jumbo v2, "rejectCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 145
    :cond_1e
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public bridge synthetic saveClirSetting(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .registers 4
    .parameter "dtmfString"

    .prologue
    .line 264
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public sendDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 240
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 241
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_25
    :goto_25
    return-void

    .line 243
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 244
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 245
    :try_start_35
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 246
    monitor-exit v0

    goto :goto_25

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .registers 7
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 955
    const-string v0, "SipPhone"

    const-string v1, "SipPhonesetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .registers 4
    .parameter "cbEnable"

    .prologue
    .line 950
    const-string v0, "SipPhone"

    const-string v1, "SipPhonesetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .registers 7
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 6
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 7
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1029
    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 288
    const-string v0, "SipPhone"

    const-string v1, "call waiting not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setDataRoamingMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1037
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 298
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 972
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 304
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 4
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 277
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 251
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 252
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_25
    return-void

    .line 255
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_25
.end method

.method public stopDtmf()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method

.method public switchHoldingAndActive()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "SipPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 188
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 190
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 191
    :cond_33
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
