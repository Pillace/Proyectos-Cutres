.class Landroid/widget/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 224
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 225
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 231
    :cond_1e
    :goto_1e
    const v0, 0x102021a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 232
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v2}, Landroid/widget/NumberPicker;->access$102(Landroid/widget/NumberPicker;Z)Z

    .line 233
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_3b
    :goto_3b
    return v2

    .line 227
    :cond_3c
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1e

    .line 234
    :cond_46
    const v0, 0x102021c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 235
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v2}, Landroid/widget/NumberPicker;->access$602(Landroid/widget/NumberPicker;Z)Z

    .line 236
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b
.end method
