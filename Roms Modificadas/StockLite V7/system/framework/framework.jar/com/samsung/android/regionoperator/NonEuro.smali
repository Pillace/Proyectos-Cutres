.class public final enum Lcom/samsung/android/regionoperator/NonEuro;
.super Ljava/lang/Enum;
.source "NonEuro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/regionoperator/NonEuro;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/regionoperator/NonEuro;

.field public static final enum INSTANCE:Lcom/samsung/android/regionoperator/NonEuro;


# instance fields
.field private final mNonEuroFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/samsung/android/regionoperator/NonEuro;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/regionoperator/NonEuro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/regionoperator/NonEuro;->INSTANCE:Lcom/samsung/android/regionoperator/NonEuro;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/regionoperator/NonEuro;

    sget-object v1, Lcom/samsung/android/regionoperator/NonEuro;->INSTANCE:Lcom/samsung/android/regionoperator/NonEuro;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/regionoperator/NonEuro;->$VALUES:[Lcom/samsung/android/regionoperator/NonEuro;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ro.csc.sales_code"

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    const-string v0, "INU"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "INS"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "ETR"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "TML"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "NPL"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "SLK"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 15
    :cond_60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/regionoperator/NonEuro;->mNonEuroFlag:Z

    .line 20
    :goto_63
    return-void

    .line 18
    :cond_64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/regionoperator/NonEuro;->mNonEuroFlag:Z

    goto :goto_63
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/regionoperator/NonEuro;
    .registers 2
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/samsung/android/regionoperator/NonEuro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/samsung/android/regionoperator/NonEuro;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/regionoperator/NonEuro;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/samsung/android/regionoperator/NonEuro;->$VALUES:[Lcom/samsung/android/regionoperator/NonEuro;

    invoke-virtual {v0}, [Lcom/samsung/android/regionoperator/NonEuro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/regionoperator/NonEuro;

    return-object v0
.end method


# virtual methods
.method public isNonEuro()Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/regionoperator/NonEuro;->mNonEuroFlag:Z

    return v0
.end method
