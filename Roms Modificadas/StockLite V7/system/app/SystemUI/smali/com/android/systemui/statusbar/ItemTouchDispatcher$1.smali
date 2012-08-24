.class Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ItemTouchDispatcher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "vX"
    .parameter "vY"

    .prologue
    .line 40
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 41
    .local v3, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 42
    .local v1, minDistance:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    .line 43
    .local v0, distance:I
    const/4 v2, 0x0

    .line 50
    .local v2, result:Z
    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$000(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/LatestItemContainer;->finishSwipe(Z)V

    .line 52
    const/4 v2, 0x1

    .line 57
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$002(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Lcom/android/systemui/statusbar/LatestItemContainer;)Lcom/android/systemui/statusbar/LatestItemContainer;

    .line 58
    return v2

    .line 51
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$000(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->stopSwipe()V

    goto :goto_1
.end method
