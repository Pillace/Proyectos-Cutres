.class Landroid/widget/AutoCompleteTextView$PopupScrollListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupScrollListener;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1488
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1491
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1493
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1500(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1494
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$1500(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1496
    :cond_2b
    return-void
.end method
