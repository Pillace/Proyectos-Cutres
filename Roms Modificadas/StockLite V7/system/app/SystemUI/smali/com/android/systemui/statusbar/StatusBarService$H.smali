.class Lcom/android/systemui/statusbar/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 758
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 766
    :goto_0
    return-void

    .line 760
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doAnimation()V

    goto :goto_0

    .line 763
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doRevealAnimation()V

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
