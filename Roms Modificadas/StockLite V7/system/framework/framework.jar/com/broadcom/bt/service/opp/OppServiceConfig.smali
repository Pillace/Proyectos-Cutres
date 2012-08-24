.class Lcom/broadcom/bt/service/opp/OppServiceConfig;
.super Ljava/lang/Object;
.source "OppServiceConfig.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final D:Z = false

.field static final DBG_REF_COUNT:Z = true

.field static final USE_BROADCAST_INTENTS:Z = false

.field static final USE_CALLBACKS:Z = true

.field static final USE_STANDALONE_EVENT_LOOP:Z

.field static final V:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "ro.debuggable"

    .line 28
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->V:Z

    .line 30
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_26

    move v0, v2

    :goto_1b
    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->D:Z

    .line 32
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isStandaloneProcess()Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    return-void

    :cond_24
    move v0, v1

    .line 28
    goto :goto_f

    :cond_26
    move v0, v1

    .line 30
    goto :goto_1b
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
