.class public Lcom/android/internal/policy/impl/PukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PukUnlockScreen$4;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PukUnlockScreen"


# instance fields
.field private NewPin:Ljava/lang/String;

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreateInPotrait:Z

.field private final mCreatedWithKeyboardOpen:Z

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinText:Landroid/widget/TextView;

.field private mPuk:Ljava/lang/String;

.field mSenderH:Landroid/os/Handler;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field mToast:Landroid/widget/Toast;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 10
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const v5, 0x1090037

    const v4, 0x1090036

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_8e

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    .line 95
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 97
    iput-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 108
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 115
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSenderH:Landroid/os/Handler;

    .line 126
    iput-object p2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 127
    iput-object p3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreateInPotrait:Z

    .line 131
    const-string v0, "GT-S5830"

    const-string v1, "GT-I5510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eqz v0, :cond_61

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    :goto_4f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->initView()V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 151
    return-void

    .line 135
    :cond_61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V

    goto :goto_4f

    .line 138
    :cond_6e
    const-string v0, "GT-S5830"

    const-string v1, "GT-B7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 139
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_4f

    .line 141
    :cond_80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V

    goto :goto_4f

    .line 94
    nop

    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V

    return-void
.end method

.method static synthetic access$1100()[C
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$210(Lcom/android/internal/policy/impl/PukUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PukUnlockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    return-object p1
.end method

.method private checkPUK()V
    .registers 3

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 488
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$3;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen$3;->start()V

    .line 509
    return-void
.end method

.method private getSimLockInfoResult()I
    .registers 5

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, result:I
    :try_start_1
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPukRetry()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_28

    move-result v0

    .line 160
    :goto_f
    const-string v1, "PukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0

    .line 158
    :catch_28
    move-exception v1

    goto :goto_f
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3c

    .line 441
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104032a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 452
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 605
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 613
    :goto_11
    return-void

    .line 611
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setLockInfoText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 328
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_21

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040440

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_20
    return-void

    .line 331
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040442

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method initView()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "GT-S5830"

    .line 165
    const-string v0, "PukUnlockScreen"

    const-string v1, "initView()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const v0, 0x10201f2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 168
    const v0, 0x10201f3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 169
    const v0, 0x10201f5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 170
    const v0, 0x10201f6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x10201da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 174
    const v0, 0x10201e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104043a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 186
    const-string v0, "GT-S5830"

    const-string v0, "GT-I5510"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v0, :cond_8b

    :cond_81
    const-string v0, "GT-S5830"

    const-string v0, "GT-B7510"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 187
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/PukUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/PukUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PukUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :goto_9f
    const-string v0, "test"

    const-string v1, "initView - end"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 285
    :cond_a7
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setFocusableInTouchMode(Z)V

    goto :goto_9f
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .registers 4
    .parameter "on"

    .prologue
    const-string v1, "PukUnlockScreen"

    .line 618
    const-string v0, "PukUnlockScreen"

    const-string v0, "[jhbedo.kim] call onAirplaneModeChanged"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz p1, :cond_1c

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 621
    const-string v0, "PukUnlockScreen"

    const-string v0, "[jhbedo.kim] goToUnlockScreen in onAirplaneModeChanged"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 624
    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const v8, 0x10400c6

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 365
    const-string v2, "test"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2f

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 368
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 369
    .local v1, len:I
    if-lez v1, :cond_29

    .line 370
    sub-int v2, v1, v6

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 371
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 373
    :cond_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 437
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_2e
    :goto_2e
    return-void

    .line 374
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_39

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_2e

    .line 376
    :cond_39
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2e

    .line 377
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f2

    goto :goto_2e

    .line 380
    :pswitch_4b
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_6b

    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x104043e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 384
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 386
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2e

    .line 389
    :cond_6b
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    .line 391
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_2e

    .line 396
    :pswitch_81
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_9c

    .line 398
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 400
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2e

    .line 406
    :cond_9c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    .line 407
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 408
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_2e

    .line 415
    :pswitch_b3
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_cf

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 418
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_2e

    .line 425
    :cond_cf
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V

    goto/16 :goto_2e

    .line 429
    :cond_e6
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 430
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_2e

    .line 377
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_81
        :pswitch_b3
        :pswitch_b3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v8, 0x10400c6

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, ""

    .line 513
    if-ne p1, v6, :cond_11

    .line 514
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v2, v5

    .line 601
    :goto_10
    return v2

    .line 518
    :cond_11
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 519
    .local v1, match:C
    if-eqz v1, :cond_22

    .line 520
    const/16 v2, 0x30

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    move v2, v5

    .line 521
    goto :goto_10

    .line 523
    :cond_22
    const/16 v2, 0x43

    if-ne p1, v2, :cond_36

    .line 524
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_34

    .line 525
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 526
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    :cond_34
    move v2, v5

    .line 528
    goto :goto_10

    .line 531
    :cond_36
    const/16 v2, 0x42

    if-ne p1, v2, :cond_100

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 533
    .local v0, focused:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne v0, v2, :cond_49

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    :cond_47
    :goto_47
    move v2, v5

    .line 598
    goto :goto_10

    .line 537
    :cond_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne v0, v2, :cond_47

    .line 539
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_104

    goto :goto_47

    .line 542
    :pswitch_5b
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_7b

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x104043e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 545
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 548
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_47

    .line 551
    :cond_7b
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    .line 553
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_47

    .line 558
    :pswitch_91
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_ac

    .line 560
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 561
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 562
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 564
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_47

    .line 568
    :cond_ac
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    .line 569
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 570
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_47

    .line 577
    :pswitch_c2
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_de

    .line 579
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 580
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_47

    .line 587
    :cond_de
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 588
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V

    goto/16 :goto_47

    .line 591
    :cond_f5
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 592
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_47

    .end local v0           #focused:Landroid/view/View;
    :cond_100
    move v2, v4

    .line 601
    goto/16 :goto_10

    .line 539
    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_91
        :pswitch_c2
        :pswitch_c2
    .end packed-switch
.end method

.method public onKeyboardChange(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 630
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eq p1, v1, :cond_11

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 633
    :cond_11
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 2
    .parameter "inPortrait"

    .prologue
    .line 626
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 343
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 348
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104043a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 351
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 356
    return-void
.end method

.method updateView()V
    .registers 4

    .prologue
    .line 292
    const-string v1, "test"

    const-string v2, "updateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, context:Landroid/content/Context;
    const-string v1, "PukUnlockScreen"

    const-string v2, "updateView()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 298
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_62

    .line 322
    :goto_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void

    .line 300
    :pswitch_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104043a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 305
    :pswitch_39
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104043b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 310
    :pswitch_45
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104043c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 311
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 315
    :pswitch_51
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104043d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 317
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 298
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_39
        :pswitch_45
        :pswitch_51
    .end packed-switch
.end method
