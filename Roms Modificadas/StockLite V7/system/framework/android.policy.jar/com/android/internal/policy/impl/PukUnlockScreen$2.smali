.class Lcom/android/internal/policy/impl/PukUnlockScreen$2;
.super Ljava/lang/Object;
.source "PukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 277
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 282
    return-void
.end method
