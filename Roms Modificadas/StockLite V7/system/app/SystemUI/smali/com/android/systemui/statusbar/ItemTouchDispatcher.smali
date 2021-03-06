.class public Lcom/android/systemui/statusbar/ItemTouchDispatcher;
.super Ljava/lang/Object;
.source "ItemTouchDispatcher.java"


# static fields
.field static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationTouchDispatcher"


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

.field private mItemLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItemLocation:[I

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;-><init>(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Lcom/android/systemui/statusbar/LatestItemContainer;)Lcom/android/systemui/statusbar/LatestItemContainer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    return-object p1
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 99
    .local v1, real:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 104
    .local v0, handled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItemLocation:[I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/LatestItemContainer;->getLocationOnScreen([I)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItemLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItemLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/LatestItemContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 124
    return v0

    .line 116
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LatestItemContainer;->stopSwipe()V

    .line 117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public needsInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "NotificationTouchDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing stale item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->stopSwipe()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->setEventsControlledByDispatcher()V

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    if-ne p1, v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    .line 71
    :cond_0
    return-void
.end method

.method public setItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;

    .line 65
    return-void
.end method
