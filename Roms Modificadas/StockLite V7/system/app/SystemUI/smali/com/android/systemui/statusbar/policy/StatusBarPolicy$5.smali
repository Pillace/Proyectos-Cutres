.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1093
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1106
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1100
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1086
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1079
    return-void
.end method
