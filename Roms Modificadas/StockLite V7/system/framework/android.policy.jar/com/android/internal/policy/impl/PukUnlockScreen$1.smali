.class Lcom/android/internal/policy/impl/PukUnlockScreen$1;
.super Ljava/lang/Object;
.source "PukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, ""

    const-string v8, "test"

    .line 189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1bc

    .line 190
    const/16 v4, 0x43

    if-ne p2, v4, :cond_36

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 192
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 193
    .local v2, len:I
    if-lez v2, :cond_2b

    .line 194
    sub-int v4, v2, v7

    invoke-interface {v0, v4, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 195
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$210(Lcom/android/internal/policy/impl/PukUnlockScreen;)I

    .line 197
    :cond_2b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    move v4, v7

    .line 273
    .end local v0           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :goto_35
    return v4

    .line 199
    :cond_36
    const/16 v4, 0x42

    if-ne p2, v4, :cond_1a6

    .line 200
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, focused:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    if-ne v1, v4, :cond_5a

    .line 202
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 263
    :goto_51
    const-string v4, "test"

    const-string v4, "KEYCODE_ENTER"

    invoke-static {v8, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 264
    goto :goto_35

    .line 204
    :cond_5a
    sget-object v4, Lcom/android/internal/policy/impl/PukUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1c0

    .line 261
    :goto_6b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_51

    .line 206
    :pswitch_75
    const-string v4, "test"

    const-string v4, "REQUIRE_PUK"

    invoke-static {v8, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_b1

    .line 210
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x104043e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    .line 212
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 214
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_6b

    .line 217
    :cond_b1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v5, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 218
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$802(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 220
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_6b

    .line 223
    :pswitch_d6
    const-string v4, "test"

    const-string v4, "REQUIRE_NEW_PIN"

    invoke-static {v8, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)I

    move-result v4

    if-ge v4, v10, :cond_111

    .line 226
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x10400c6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_6b

    .line 234
    :cond_111
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$902(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v5, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_6b

    .line 241
    :pswitch_137
    const-string v4, "test"

    const-string v4, "VERIFY_NEW_PIN_FAILED"

    invoke-static {v8, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)I

    move-result v4

    if-ge v4, v10, :cond_172

    .line 244
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x10400c6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_6b

    .line 252
    :cond_172
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PukUnlockScreen;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 253
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    goto/16 :goto_6b

    .line 255
    :cond_193
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v5, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 256
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$202(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_6b

    .line 266
    .end local v1           #focused:Landroid/view/View;
    :cond_1a6
    invoke-static {}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1100()[C

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v3

    .line 267
    .local v3, match:C
    if-eqz v3, :cond_1b9

    .line 268
    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    const/16 v5, 0x30

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V

    :cond_1b9
    move v4, v7

    .line 270
    goto/16 :goto_35

    .end local v3           #match:C
    :cond_1bc
    move v4, v7

    .line 273
    goto/16 :goto_35

    .line 204
    nop

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_75
        :pswitch_d6
        :pswitch_137
        :pswitch_137
    .end packed-switch
.end method
