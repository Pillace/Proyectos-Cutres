.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousEnd:I

.field private mPreviousStart:I

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$HandleView;

.field private mSwapCursorController:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8776
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8756
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 8761
    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    .line 8762
    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    .line 8765
    iput-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 8770
    new-instance v0, Landroid/widget/TextView$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SelectionModifierCursorController$1;-><init>(Landroid/widget/TextView$SelectionModifierCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    .line 8777
    new-instance v0, Landroid/widget/TextView$HandleView;

    invoke-direct {v0, p1, p0, v2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    .line 8778
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    .line 8779
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 8780
    return-void
.end method

.method private hideDelayed(I)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 8840
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8841
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8842
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 8993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 8994
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_5
    if-ge v0, v2, :cond_26

    .line 8995
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 8996
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 8997
    .local v4, y:I
    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->getOffset(II)I

    move-result v1

    .line 8998
    .local v1, offset:I
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v5, :cond_1d

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8999
    :cond_1d
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v5, :cond_23

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8994
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9001
    .end local v1           #offset:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_26
    return-void
.end method


# virtual methods
.method public doSwapCursorController()Z
    .registers 2

    .prologue
    .line 9096
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    return v0
.end method

.method public endHandleVisible()I
    .registers 2

    .prologue
    .line 9063
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9064
    const/4 v0, 0x2

    .line 9068
    :goto_9
    return v0

    .line 9065
    :cond_a
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9066
    const/4 v0, 0x0

    goto :goto_9

    .line 9068
    :cond_14
    const/16 v0, 0x270f

    goto :goto_9
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 9053
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9054
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    .line 9058
    :goto_e
    return v0

    .line 9055
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 9056
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    goto :goto_e

    .line 9058
    :cond_1e
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public getMaxTouchOffset()I
    .registers 2

    .prologue
    .line 9008
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .registers 2

    .prologue
    .line 9004
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 9043
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9044
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    .line 9048
    :goto_e
    return v0

    .line 9045
    :cond_f
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 9046
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    goto :goto_e

    .line 9048
    :cond_1e
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8819
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8820
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8821
    iput-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8822
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8824
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_32

    .line 8825
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8826
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8828
    :cond_2b
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8832
    :cond_32
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 8833
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 8834
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/widget/TextView;->access$2702(Landroid/widget/TextView;Z)Z

    .line 8837
    :cond_4a
    return-void
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 9029
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8845
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public offsetChanged(Landroid/widget/TextView$HandleView;)Z
    .registers 7
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9079
    const/4 v1, 0x0

    .line 9080
    .local v1, result:Z
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_18

    iget v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    move v0, v2

    .line 9082
    .local v0, previousOffset:I
    :goto_a
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_1e

    .line 9083
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-eq v2, v0, :cond_1c

    move v1, v4

    .line 9090
    :goto_17
    return v1

    .line 9080
    .end local v0           #previousOffset:I
    :cond_18
    iget v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    move v0, v2

    goto :goto_a

    .restart local v0       #previousOffset:I
    :cond_1c
    move v1, v3

    .line 9083
    goto :goto_17

    .line 9084
    :cond_1e
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v2, :cond_2e

    .line 9085
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v2, v0, :cond_2c

    move v1, v4

    :goto_2b
    goto :goto_17

    :cond_2c
    move v1, v3

    goto :goto_2b

    .line 9087
    :cond_2e
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 9039
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 8939
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8940
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    sparse-switch v2, :sswitch_data_44

    .line 8986
    :cond_17
    :goto_17
    const/4 v2, 0x0

    return v2

    .line 8942
    :sswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 8943
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 8946
    .local v1, y:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getOffset(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    goto :goto_17

    .line 8973
    .end local v0           #x:I
    .end local v1           #y:I
    :sswitch_2e
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8975
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 8940
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_19
        0x5 -> :sswitch_2e
        0x6 -> :sswitch_2e
    .end sparse-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 9033
    if-nez p1, :cond_5

    .line 9034
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 9036
    :cond_5
    return-void
.end method

.method public resetSwapCursorController()V
    .registers 2

    .prologue
    .line 9100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 9101
    return-void
.end method

.method public resetTouchOffsets()V
    .registers 2

    .prologue
    .line 9012
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 9013
    return-void
.end method

.method public setMaxTouchOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 9021
    iput p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 9022
    return-void
.end method

.method public setMinTouchOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 9017
    iput p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 9018
    return-void
.end method

.method public setPreviousOffset()V
    .registers 2

    .prologue
    .line 9074
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousStart:I

    .line 9075
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousEnd:I

    .line 9076
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 8784
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 8816
    :cond_8
    :goto_8
    return-void

    .line 8806
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8810
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8811
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8812
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8813
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8814
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)V

    .line 8815
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hideDelayed(I)V

    goto :goto_8
.end method

.method public updatePosition()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8892
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 8933
    :cond_8
    :goto_8
    return-void

    .line 8896
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8897
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8900
    .local v0, selectionEnd:I
    if-ltz v1, :cond_1b

    if-ltz v0, :cond_1b

    if-ne v1, v0, :cond_2b

    .line 8902
    :cond_1b
    const-string v2, "TextView"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8903
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8904
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)V

    goto :goto_8

    .line 8909
    :cond_2b
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8910
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8913
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v2, :cond_42

    .line 8914
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->updateCurrentMenuPosition()V

    .line 8917
    :cond_42
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8918
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->getCurrentMenuPosition()I

    move-result v2

    if-eqz v2, :cond_8d

    :cond_6a
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->getCurrentMenuPosition()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8d

    :cond_7d
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a7

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 8921
    :cond_8d
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 8922
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8924
    :cond_9e
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2, v4}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    goto/16 :goto_8

    .line 8926
    :cond_a7
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->getLife()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8927
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2}, Landroid/widget/TextView$CursorControllerMenu;->updateCursorControllerMenu()V

    .line 8928
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v2, v4}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    goto/16 :goto_8
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .registers 10
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 8849
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 8850
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8852
    .local v2, selectionEnd:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_3a

    move v1, v3

    .line 8853
    .local v1, previousOffset:I
    :goto_12
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8856
    .local v0, offset:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_3c

    .line 8864
    if-ne v0, v2, :cond_20

    .line 8865
    sub-int v0, v2, v5

    .line 8867
    :cond_20
    move v3, v0

    .line 8883
    :goto_21
    if-ge v2, v3, :cond_42

    move v4, v5

    :goto_24
    iput-boolean v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mSwapCursorController:Z

    .line 8886
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8887
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8888
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Landroid/widget/TextView$SelectionModifierCursorController;->hideDelayed(I)V

    .line 8889
    return-void

    .end local v0           #offset:I
    .end local v1           #previousOffset:I
    :cond_3a
    move v1, v2

    .line 8852
    goto :goto_12

    .line 8876
    .restart local v0       #offset:I
    .restart local v1       #previousOffset:I
    :cond_3c
    if-ne v0, v3, :cond_40

    .line 8877
    add-int/lit8 v0, v3, 0x1

    .line 8879
    :cond_40
    move v2, v0

    goto :goto_21

    .line 8883
    :cond_42
    const/4 v4, 0x0

    goto :goto_24
.end method
