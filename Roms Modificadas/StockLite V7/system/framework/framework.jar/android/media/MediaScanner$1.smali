.class Landroid/media/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScanner;

.field final synthetic val$existingFiles:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner;Ljava/util/HashSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    iput-object p2, p0, Landroid/media/MediaScanner$1;->val$existingFiles:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1737
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaScanner$1;->val$existingFiles:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_23

    .line 1740
    .local v2, fileToDelete:Ljava/lang/String;
    :try_start_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1742
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_20} :catch_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_23

    goto :goto_6

    .line 1744
    .end local v1           #f:Ljava/io/File;
    :catch_21
    move-exception v4

    goto :goto_6

    .line 1747
    .end local v2           #fileToDelete:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_23
    move-exception v4

    move-object v0, v4

    .line 1748
    .local v0, ex:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pruneDeadThumbnailFiles() deleting file thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1750
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_41
    return-void
.end method
