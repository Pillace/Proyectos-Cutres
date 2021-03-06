.class Lcom/android/internal/policy/impl/ClockWidget$Charge;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charge"
.end annotation


# static fields
.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private mBatteryLevel:I

.field private mCharging:Ljava/lang/String;

.field private mCharingText:Landroid/widget/TextView;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 856
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    .line 858
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 863
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 846
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 847
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 848
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 851
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_NOT_DISPLAY:I

    .line 852
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_CHARGING:I

    .line 853
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_FULL:I

    .line 854
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_OVERHEAT:I

    .line 855
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_DEAD:I

    .line 859
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->PLUG_IN:I

    .line 860
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->PLUG_OUT:I

    .line 864
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v0, :cond_d

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    :goto_c
    return-void

    .line 939
    :cond_d
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    if-ne v0, v2, :cond_6d

    .line 940
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 941
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 954
    :goto_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 942
    :cond_30
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 943
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_23

    .line 945
    :cond_43
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_65

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 949
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040317

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_23

    .line 946
    :cond_65
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    if-gtz v0, :cond_4d

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_4d

    .line 952
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_23
.end method

.method private updateChargingInfo()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 885
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v0, :cond_c

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    :goto_b
    return-void

    .line 891
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    if-eqz v0, :cond_49

    .line 892
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_30

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 902
    :goto_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 895
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040317

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_23

    .line 900
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_23
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 868
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 869
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 873
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 874
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 878
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 879
    const v0, 0x1020276

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 8
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 915
    const-string v0, "ClockWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateBatteryInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sput p1, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    .line 918
    iput p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 919
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    if-nez v0, :cond_43

    .line 920
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_40

    .line 921
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 924
    :goto_3a
    sput v4, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    .line 930
    :goto_3c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryStringAndIcon()V

    .line 931
    return-void

    .line 923
    :cond_40
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    goto :goto_3a

    .line 927
    :cond_43
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 928
    sput v3, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    goto :goto_3c
.end method

.method public refreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 908
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 909
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 910
    iput p3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 911
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->updateChargingInfo()V

    .line 912
    return-void
.end method
