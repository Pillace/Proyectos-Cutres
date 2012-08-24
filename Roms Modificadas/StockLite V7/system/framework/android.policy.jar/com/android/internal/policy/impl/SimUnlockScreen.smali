.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

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

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 13
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const v6, 0x1090036

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "GT-S5830"

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_124

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 82
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 84
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 99
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 100
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    .line 102
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 103
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 104
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "GT-S5830"

    const-string v1, "GT-I5510"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 109
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_f6

    .line 110
    invoke-virtual {v0, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    :goto_3f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 125
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimUnlockScreen: num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v1, 0x10201f2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 130
    const v1, 0x10201f3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 131
    const v1, 0x10201f5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 132
    const v1, 0x10201f6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x10201da

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 137
    const v1, 0x10201e0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x1040308

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 148
    const-string v1, "GT-S5830"

    const-string v1, "GT-I5510"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v4, :cond_dd

    :cond_d3
    const-string v1, "GT-S5830"

    const-string v1, "GT-B7510"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 150
    :cond_dd
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    :goto_f0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 190
    return-void

    .line 112
    :cond_f6
    const v1, 0x1090037

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_3f

    .line 115
    :cond_103
    const-string v1, "GT-S5830"

    const-string v1, "GT-B7510"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 116
    invoke-virtual {v0, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3f

    .line 118
    :cond_112
    const v1, 0x1090037

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_3f

    .line 186
    :cond_11f
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    goto :goto_f0

    .line 81
    nop

    :array_124
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

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$110(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    return-void
.end method

.method static synthetic access$600()[C
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private checkPin()V
    .registers 3

    .prologue
    .line 327
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 367
    :goto_1f
    return-void

    .line 338
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->start()V

    goto :goto_1f
.end method

.method private getSimLockInfoResult()I
    .registers 5

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, result:I
    :try_start_1
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_28

    move-result v0

    .line 201
    :goto_f
    const-string v1, "SimUnlockScreen"

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

    .line 202
    return v0

    .line 199
    :catch_28
    move-exception v1

    goto :goto_f
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 307
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104032a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 321
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 408
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 416
    :goto_11
    return-void

    .line 414
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setLockInfoText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 245
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_21

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104043f

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_20
    return-void

    .line 248
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040441

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

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
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 240
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .registers 4
    .parameter "on"

    .prologue
    const-string v1, "SimUnlockScreen"

    .line 421
    const-string v0, "SimUnlockScreen"

    const-string v0, "call onAirplaneModeChanged"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz p1, :cond_1c

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 424
    const-string v0, "SimUnlockScreen"

    const-string v0, "[jhbedo.kim] goToUnlockScreen in onAirplaneModeChanged"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 427
    :cond_1c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 447
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_21

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 288
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 289
    .local v1, len:I
    if-lez v1, :cond_1b

    .line 290
    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 291
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 293
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 303
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_20
    :goto_20
    return-void

    .line 294
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2b

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_20

    .line 296
    :cond_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_20

    .line 298
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 299
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(): num_of_retry is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_20
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 454
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v5, "SimUnlockScreen"

    .line 372
    const-string v2, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown :: keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x4

    if-ne p1, v2, :cond_25

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v2, v4

    .line 404
    :goto_24
    return v2

    .line 379
    :cond_25
    const/16 v2, 0x42

    if-ne p1, v2, :cond_43

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, focused:Landroid/view/View;
    const-string v2, "SimUnlockScreen"

    const-string v2, "onKeyDown :: KEYCODE_ENTER"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne v0, v2, :cond_3f

    .line 383
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    :goto_3d
    move v2, v4

    .line 387
    goto :goto_24

    .line 385
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_3d

    .line 389
    .end local v0           #focused:Landroid/view/View;
    :cond_43
    const/16 v2, 0x43

    if-ne p1, v2, :cond_57

    .line 390
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_55

    .line 391
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 392
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    :cond_55
    move v2, v4

    .line 394
    goto :goto_24

    .line 397
    :cond_57
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 398
    .local v1, match:C
    if-eqz v1, :cond_80

    .line 399
    const-string v2, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown :: reportDigit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v2, 0x30

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    move v2, v4

    .line 401
    goto :goto_24

    .line 404
    :cond_80
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 214
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 553
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 557
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 561
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040308

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 565
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 569
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 3
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 573
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 431
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 441
    :cond_14
    :goto_14
    return-void

    .line 433
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 434
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 435
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 436
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 435
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
