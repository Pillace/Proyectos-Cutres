.class Landroid/app/SuggestionsAdapter$2;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SuggestionsAdapter;


# direct methods
.method constructor <init>(Landroid/app/SuggestionsAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Landroid/app/SuggestionsAdapter$2;->this$0:Landroid/app/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/SuggestionsAdapter$2;->this$0:Landroid/app/SuggestionsAdapter;

    invoke-static {v0}, Landroid/app/SuggestionsAdapter;->access$000(Landroid/app/SuggestionsAdapter;)Landroid/app/SearchDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog;->setWorking(Z)V

    .line 123
    return-void
.end method
