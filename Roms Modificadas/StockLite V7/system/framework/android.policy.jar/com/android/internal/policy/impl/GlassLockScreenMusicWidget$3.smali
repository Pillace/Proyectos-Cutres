.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 344
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 345
    return-void
.end method
