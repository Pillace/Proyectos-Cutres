.class public Landroid/util/StringBuilderPrinter;
.super Ljava/lang/Object;
.source "StringBuilderPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "builder"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 5
    .parameter "x"

    .prologue
    const/16 v2, 0xa

    .line 36
    iget-object v1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 38
    .local v0, len:I
    if-lez v0, :cond_16

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1b

    .line 39
    :cond_16
    iget-object v1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_1b
    return-void
.end method