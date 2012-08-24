.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo; = null

.field public static final PARSE_CHATTY:I = 0x2

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SDK_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private DBG:Z

.field private mArchiveSourcePath:Ljava/lang/String;

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 93
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_29
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 101
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void

    .line 93
    :cond_35
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto :goto_29
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "archiveSourcePath"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser;->DBG:Z

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 173
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 174
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 61
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "clsSeq"
    .parameter "outError"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 1177
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_23

    .line 1178
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1196
    :goto_22
    return-object v3

    .line 1181
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, cls:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1183
    .local v1, c:C
    if-ne v1, v4, :cond_43

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1186
    :cond_43
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_5d

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1192
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_5d
    const/16 v3, 0x61

    if-lt v1, v3, :cond_6a

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_6a

    .line 1193
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1195
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1196
    goto :goto_22
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "pkg"
    .parameter "procSeq"
    .parameter "type"
    .parameter "outError"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, " name "

    const-string v8, " in package "

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, proc:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1203
    .local v0, c:C
    if-eqz p0, :cond_a2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_a2

    .line 1204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4d

    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": must be at least two characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1224
    :goto_4c
    return-object v4

    .line 1209
    :cond_4d
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, subName:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, nameError:Ljava/lang/String;
    if-eqz v1, :cond_8c

    .line 1212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1214
    goto :goto_4c

    .line 1216
    :cond_8c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_4c

    .line 1218
    .end local v1           #nameError:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_a2
    invoke-static {v2, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1219
    .restart local v1       #nameError:Ljava/lang/String;
    if-eqz v1, :cond_e7

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e7

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1222
    goto/16 :goto_4c

    .line 1224
    :cond_e7
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4c
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "flags"
    .parameter "separateProcesses"
    .parameter "outError"

    .prologue
    .line 1230
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_13

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1231
    if-eqz p1, :cond_11

    move-object v2, p1

    .line 1244
    :goto_10
    return-object v2

    :cond_11
    move-object v2, p0

    .line 1231
    goto :goto_10

    .line 1233
    :cond_13
    if-eqz p4, :cond_34

    .line 1234
    array-length v2, p4

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_19
    if-ltz v0, :cond_34

    .line 1235
    aget-object v1, p4, v0

    .line 1236
    .local v1, sp:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    move-object v2, p0

    .line 1237
    goto :goto_10

    .line 1234
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1241
    .end local v0           #i:I
    .end local v1           #sp:Ljava/lang/String;
    :cond_34
    if-eqz p2, :cond_3c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_3e

    :cond_3c
    move-object v2, p1

    .line 1242
    goto :goto_10

    .line 1244
    :cond_3e
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "outError"

    .prologue
    .line 1249
    if-nez p2, :cond_4

    move-object v0, p1

    .line 1255
    :goto_3
    return-object v0

    .line 1252
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 1253
    const/4 v0, 0x0

    goto :goto_3

    .line 1255
    :cond_c
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "flags"
    .parameter "p"
    .parameter "metaData"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3008
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-eqz v1, :cond_15

    .line 3009
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v1, v2, :cond_13

    move v0, v2

    .line 3010
    .local v0, enabled:Z
    :goto_b
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v1, v0, :cond_15

    move v1, v2

    .line 3022
    .end local v0           #enabled:Z
    :goto_12
    return v1

    :cond_13
    move v0, v3

    .line 3009
    goto :goto_b

    .line 3014
    :cond_15
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_21

    if-nez p2, :cond_1f

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_21

    :cond_1f
    move v1, v2

    .line 3016
    goto :goto_12

    .line 3018
    :cond_21
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_2b

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    move v1, v2

    .line 3020
    goto :goto_12

    :cond_2b
    move v1, v3

    .line 3022
    goto :goto_12
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .parameter "a"
    .parameter "flags"

    .prologue
    .line 3100
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3108
    :goto_3
    return-object v1

    .line 3101
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3102
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    .line 3105
    :cond_11
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 3106
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3107
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3108
    goto :goto_3
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3026
    if-nez p0, :cond_5

    .line 3052
    :goto_4
    return-object v1

    .line 3027
    :cond_5
    invoke-static {p1, p0, v1}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3030
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_14

    .line 3031
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3033
    :cond_14
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    .line 3037
    :cond_17
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3038
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_26

    .line 3039
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3041
    :cond_26
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2e

    .line 3042
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3044
    :cond_2e
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_35

    .line 3045
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3047
    :cond_35
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    if-ne v1, v2, :cond_3d

    .line 3048
    iput-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_3b
    :goto_3b
    move-object v1, v0

    .line 3052
    goto :goto_4

    .line 3049
    :cond_3d
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    .line 3050
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3b
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .parameter "i"
    .parameter "flags"

    .prologue
    .line 3213
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3219
    :goto_3
    return-object v1

    .line 3214
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3215
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_3

    .line 3217
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3218
    .local v0, ii:Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3219
    goto :goto_3
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;
    .registers 9
    .parameter "p"
    .parameter "gids"
    .parameter "flags"
    .parameter "firstInstallTime"
    .parameter "lastUpdateTime"

    .prologue
    .line 193
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 194
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 195
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 196
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 198
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 199
    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 200
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 201
    iput-wide p3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 202
    iput-wide p5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 203
    and-int/lit16 p3, p2, 0x100

    if-eqz p3, :cond_2d

    .line 204
    .end local p3
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 206
    :cond_2d
    and-int/lit16 p1, p2, 0x4000

    if-eqz p1, :cond_5b

    .line 207
    .end local p1
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 208
    .local p1, N:I
    if-lez p1, :cond_44

    .line 209
    new-array p1, p1, [Landroid/content/pm/ConfigurationInfo;

    .end local p1           #N:I
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 210
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    :cond_44
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p1, :cond_9e

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 213
    .restart local p1       #N:I
    :goto_4e
    if-lez p1, :cond_5b

    .line 214
    new-array p1, p1, [Landroid/content/pm/FeatureInfo;

    .end local p1           #N:I
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 215
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    :cond_5b
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_bc

    .line 219
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 220
    .restart local p1       #N:I
    if-lez p1, :cond_bc

    .line 221
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_a0

    .line 222
    new-array p3, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 230
    .end local p5
    :goto_6f
    const/4 p3, 0x0

    .local p3, i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .local p5, j:I
    move p4, p3

    .end local p3           #i:I
    .local p4, i:I
    :goto_73
    if-ge p4, p1, :cond_bc

    .line 231
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 232
    .local p3, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local p3           #activity:Landroid/content/pm/PackageParser$Activity;
    iget-boolean p3, p3, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez p3, :cond_87

    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_9a

    .line 234
    :cond_87
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 p3, p5, 0x1

    .end local p5           #j:I
    .local p3, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    aput-object p6, v1, p5

    move p5, p3

    .line 230
    .end local p3           #j:I
    .restart local p5       #j:I
    :cond_9a
    add-int/lit8 p3, p4, 0x1

    .end local p4           #i:I
    .local p3, i:I
    move p4, p3

    .end local p3           #i:I
    .restart local p4       #i:I
    goto :goto_73

    .line 212
    .end local p1           #N:I
    .end local p4           #i:I
    .local p5, lastUpdateTime:J
    :cond_9e
    const/4 p1, 0x0

    goto :goto_4e

    .line 224
    .restart local p1       #N:I
    :cond_a0
    const/4 p4, 0x0

    .line 225
    .local p4, num:I
    const/4 p3, 0x0

    .end local p5           #lastUpdateTime:J
    .restart local p3       #i:I
    :goto_a2
    if-ge p3, p1, :cond_b7

    .line 226
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Activity;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p5, p5, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz p5, :cond_b4

    add-int/lit8 p4, p4, 0x1

    .line 225
    :cond_b4
    add-int/lit8 p3, p3, 0x1

    goto :goto_a2

    .line 228
    :cond_b7
    new-array p3, p4, [Landroid/content/pm/ActivityInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_6f

    .line 239
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_bc
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_11b

    .line 240
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 241
    .restart local p1       #N:I
    if-lez p1, :cond_11b

    .line 242
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_ff

    .line 243
    new-array p3, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 251
    :goto_d0
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .local p5, j:I
    move p4, p3

    .end local p3           #i:I
    .local p4, i:I
    :goto_d4
    if-ge p4, p1, :cond_11b

    .line 252
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 253
    .local p3, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local p3           #activity:Landroid/content/pm/PackageParser$Activity;
    iget-boolean p3, p3, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez p3, :cond_e8

    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_fb

    .line 255
    :cond_e8
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 p3, p5, 0x1

    .end local p5           #j:I
    .local p3, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    aput-object p6, v1, p5

    move p5, p3

    .line 251
    .end local p3           #j:I
    .restart local p5       #j:I
    :cond_fb
    add-int/lit8 p3, p4, 0x1

    .end local p4           #i:I
    .local p3, i:I
    move p4, p3

    .end local p3           #i:I
    .restart local p4       #i:I
    goto :goto_d4

    .line 245
    .end local p4           #i:I
    .end local p5           #j:I
    :cond_ff
    const/4 p4, 0x0

    .line 246
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_101
    if-ge p3, p1, :cond_116

    .line 247
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Activity;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p5, p5, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz p5, :cond_113

    add-int/lit8 p4, p4, 0x1

    .line 246
    :cond_113
    add-int/lit8 p3, p3, 0x1

    goto :goto_101

    .line 249
    :cond_116
    new-array p3, p4, [Landroid/content/pm/ActivityInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_d0

    .line 260
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_11b
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_178

    .line 261
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 262
    .restart local p1       #N:I
    if-lez p1, :cond_178

    .line 263
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_15c

    .line 264
    new-array p3, p1, [Landroid/content/pm/ServiceInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 272
    :goto_12f
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    :goto_132
    if-ge p3, p1, :cond_178

    .line 273
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Service;

    .line 274
    .local p4, service:Landroid/content/pm/PackageParser$Service;
    iget-object p4, p4, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .end local p4           #service:Landroid/content/pm/PackageParser$Service;
    iget-boolean p4, p4, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez p4, :cond_146

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_25f

    .line 276
    :cond_146
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 p4, p5, 0x1

    .end local p5           #j:I
    .local p4, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Service;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object p6

    aput-object p6, v1, p5

    .line 272
    :goto_158
    add-int/lit8 p3, p3, 0x1

    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    goto :goto_132

    .line 266
    .end local p3           #i:I
    .end local p5           #j:I
    :cond_15c
    const/4 p4, 0x0

    .line 267
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_15e
    if-ge p3, p1, :cond_173

    .line 268
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Service;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean p5, p5, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz p5, :cond_170

    add-int/lit8 p4, p4, 0x1

    .line 267
    :cond_170
    add-int/lit8 p3, p3, 0x1

    goto :goto_15e

    .line 270
    :cond_173
    new-array p3, p4, [Landroid/content/pm/ServiceInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_12f

    .line 281
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_178
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_1d5

    .line 282
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 283
    .restart local p1       #N:I
    if-lez p1, :cond_1d5

    .line 284
    and-int/lit16 p3, p2, 0x200

    if-eqz p3, :cond_1b9

    .line 285
    new-array p3, p1, [Landroid/content/pm/ProviderInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 293
    :goto_18c
    const/4 p3, 0x0

    .restart local p3       #i:I
    const/4 p4, 0x0

    .local p4, j:I
    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    :goto_18f
    if-ge p3, p1, :cond_1d5

    .line 294
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Provider;

    .line 295
    .local p4, provider:Landroid/content/pm/PackageParser$Provider;
    iget-object p4, p4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .end local p4           #provider:Landroid/content/pm/PackageParser$Provider;
    iget-boolean p4, p4, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez p4, :cond_1a3

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_25c

    .line 297
    :cond_1a3
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 p4, p5, 0x1

    .end local p5           #j:I
    .local p4, j:I
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Provider;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object p6

    aput-object p6, v1, p5

    .line 293
    :goto_1b5
    add-int/lit8 p3, p3, 0x1

    move p5, p4

    .end local p4           #j:I
    .restart local p5       #j:I
    goto :goto_18f

    .line 287
    .end local p3           #i:I
    .end local p5           #j:I
    :cond_1b9
    const/4 p4, 0x0

    .line 288
    .local p4, num:I
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_1bb
    if-ge p3, p1, :cond_1d0

    .line 289
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Provider;

    iget-object p5, p5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean p5, p5, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz p5, :cond_1cd

    add-int/lit8 p4, p4, 0x1

    .line 288
    :cond_1cd
    add-int/lit8 p3, p3, 0x1

    goto :goto_1bb

    .line 291
    :cond_1d0
    new-array p3, p4, [Landroid/content/pm/ProviderInfo;

    .end local p3           #i:I
    iput-object p3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_18c

    .line 302
    .end local p1           #N:I
    .end local p4           #num:I
    :cond_1d5
    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_1fb

    .line 303
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 304
    .restart local p1       #N:I
    if-lez p1, :cond_1fb

    .line 305
    new-array p3, p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 306
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_1e6
    if-ge p3, p1, :cond_1fb

    .line 307
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {p4, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p4

    aput-object p4, p5, p3

    .line 306
    add-int/lit8 p3, p3, 0x1

    goto :goto_1e6

    .line 312
    .end local p1           #N:I
    .end local p3           #i:I
    :cond_1fb
    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_23f

    .line 313
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 314
    .restart local p1       #N:I
    if-lez p1, :cond_221

    .line 315
    new-array p3, p1, [Landroid/content/pm/PermissionInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 316
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_20c
    if-ge p3, p1, :cond_221

    .line 317
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/PackageParser$Permission;

    invoke-static {p4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p4

    aput-object p4, p5, p3

    .line 316
    add-int/lit8 p3, p3, 0x1

    goto :goto_20c

    .line 320
    .end local p3           #i:I
    :cond_221
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .end local p1           #N:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 321
    .restart local p1       #N:I
    if-lez p1, :cond_23f

    .line 322
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 323
    const/4 p3, 0x0

    .restart local p3       #i:I
    :goto_22e
    if-ge p3, p1, :cond_23f

    .line 324
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    aput-object p4, p5, p3

    .line 323
    add-int/lit8 p3, p3, 0x1

    goto :goto_22e

    .line 328
    .end local p1           #N:I
    .end local p3           #i:I
    :cond_23f
    and-int/lit8 p1, p2, 0x40

    if-eqz p1, :cond_259

    .line 329
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_25a

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    .line 330
    .restart local p1       #N:I
    :goto_24a
    if-lez p1, :cond_259

    .line 331
    new-array p2, p1, [Landroid/content/pm/Signature;

    .end local p2
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 332
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .end local p0
    const/4 p2, 0x0

    iget-object p3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p4, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    .end local p1           #N:I
    :cond_259
    return-object v0

    .line 329
    .restart local p0
    .restart local p2
    :cond_25a
    const/4 p1, 0x0

    goto :goto_24a

    .restart local p1       #N:I
    .restart local p3       #i:I
    .restart local p5       #j:I
    :cond_25c
    move p4, p5

    .end local p5           #j:I
    .local p4, j:I
    goto/16 :goto_1b5

    .end local p4           #j:I
    .restart local p5       #j:I
    :cond_25f
    move p4, p5

    .end local p5           #j:I
    .restart local p4       #j:I
    goto/16 :goto_158
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .parameter "pg"
    .parameter "flags"

    .prologue
    .line 3068
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3074
    :goto_3
    return-object v1

    .line 3069
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3070
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_3

    .line 3072
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 3073
    .local v0, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3074
    goto :goto_3
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 3057
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3063
    :goto_3
    return-object v1

    .line 3058
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 3059
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_3

    .line 3061
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 3062
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3063
    goto :goto_3
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 3175
    if-nez p0, :cond_5

    move-object v1, v3

    .line 3188
    :goto_4
    return-object v1

    .line 3176
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1c

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_1c

    .line 3179
    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_4

    .line 3182
    :cond_1c
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3183
    .local v0, pi:Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3184
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2d

    .line 3185
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3187
    :cond_2d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3188
    goto :goto_4
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 3133
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 3141
    :goto_3
    return-object v1

    .line 3134
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3135
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 3138
    :cond_11
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3139
    .local v0, si:Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 3140
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3141
    goto :goto_3
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 181
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 12
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v4, 0x0

    const-string v7, "PackageParser"

    const-string v6, "Exception reading "

    const-string v5, " in "

    .line 343
    :try_start_7
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v1, is:Ljava/io/InputStream;
    :cond_10
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 347
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 348
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_21} :catch_53

    move-result-object v2

    .line 356
    .end local v1           #is:Ljava/io/InputStream;
    :goto_22
    return-object v2

    .restart local v1       #is:Ljava/io/InputStream;
    :cond_23
    move-object v2, v4

    .line 348
    goto :goto_22

    .line 349
    .end local v1           #is:Ljava/io/InputStream;
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 350
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/io/IOException;
    :goto_51
    move-object v2, v4

    .line 356
    goto :goto_22

    .line 352
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 353
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .registers 30
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1791
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 1794
    .local v18, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-nez v4, :cond_2d

    .line 1795
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x7

    const/16 v13, 0x11

    const/4 v14, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-direct/range {v4 .. v14}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1805
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-eqz p7, :cond_69

    const-string v5, "<receiver>"

    :goto_36
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1809
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1810
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_6c

    .line 1811
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1812
    const/4 v4, 0x0

    .line 1980
    :goto_68
    return-object v4

    .line 1805
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_69
    const-string v5, "<activity>"

    goto :goto_36

    .line 1815
    .restart local v16       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_6c
    const/4 v4, 0x6

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    .line 1817
    .local v19, setExported:Z
    if-eqz v19, :cond_87

    .line 1818
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 1822
    :cond_87
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1826
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1828
    .local v20, str:Ljava/lang/String;
    if-nez v20, :cond_23d

    .line 1829
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1834
    :goto_b2
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1836
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1839
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1840
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 1843
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1846
    :cond_fc
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 1849
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1852
    :cond_114
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 1855
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1858
    :cond_12c
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1861
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1864
    :cond_144
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 1867
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1870
    :cond_15c
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_174

    .line 1873
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1876
    :cond_174
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 1879
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1882
    :cond_18c
    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_256

    const/4 v5, 0x1

    :goto_19a
    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 1885
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1888
    :cond_1af
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 1891
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1894
    :cond_1c7
    if-nez p7, :cond_259

    .line 1895
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1898
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1901
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1904
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x14

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1912
    :goto_211
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1914
    if-eqz p7, :cond_235

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_235

    .line 1917
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-ne v4, v5, :cond_235

    .line 1918
    const/4 v4, 0x0

    const-string v5, "Heavy-weight applications can not have receivers in main process"

    aput-object v5, p6, v4

    .line 1922
    :cond_235
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_26a

    .line 1923
    const/4 v4, 0x0

    goto/16 :goto_68

    .line 1831
    :cond_23d
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_254

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_250
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_b2

    :cond_254
    const/4 v5, 0x0

    goto :goto_250

    .line 1882
    :cond_256
    const/4 v5, 0x0

    goto/16 :goto_19a

    .line 1908
    :cond_259
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1909
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_211

    .line 1926
    :cond_26a
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1929
    .local v17, outerDepth:I
    :cond_26e
    :goto_26e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_3e2

    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_287

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_3e2

    .line 1931
    :cond_287
    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_26e

    const/4 v4, 0x4

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_26e

    .line 1935
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_307

    .line 1936
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1937
    .local v9, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez p7, :cond_2c0

    const/4 v4, 0x1

    move v11, v4

    :goto_2ab
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2c3

    .line 1938
    const/4 v4, 0x0

    goto/16 :goto_68

    .line 1937
    :cond_2c0
    const/4 v4, 0x0

    move v11, v4

    goto :goto_2ab

    .line 1940
    :cond_2c3
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2fd

    .line 1941
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_26e

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26e

    .line 1945
    :cond_2fd
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26e

    .line 1947
    .end local v9           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_307
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_330

    .line 1948
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_26e

    .line 1950
    const/4 v4, 0x0

    goto/16 :goto_68

    .line 1954
    :cond_330
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_35a

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_35a
    if-eqz p7, :cond_3a1

    .line 1956
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_39c

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_39c
    :goto_39c
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_26e

    .line 1960
    :cond_3a1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_39c

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39c

    .line 1976
    :cond_3e2
    if-nez v19, :cond_3f7

    .line 1977
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3fb

    const/4 v5, 0x1

    :goto_3f5
    iput-boolean v5, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_3f7
    move-object/from16 v4, v16

    .line 1980
    goto/16 :goto_68

    .line 1977
    :cond_3fb
    const/4 v5, 0x0

    goto :goto_3f5
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .registers 34
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1986
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 1989
    .local v20, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 1991
    .local v25, targetActivity:Ljava/lang/String;
    if-nez v25, :cond_21

    .line 1992
    const/4 v3, 0x0

    const-string v4, "<activity-alias> does not specify android:targetActivity"

    aput-object v4, p6, v3

    .line 1993
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1994
    const/4 v3, 0x0

    .line 2123
    :goto_20
    return-object v3

    .line 1997
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1999
    if-nez v25, :cond_38

    .line 2000
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2001
    const/4 v3, 0x0

    goto :goto_20

    .line 2004
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_62

    .line 2005
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<activity-alias>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2016
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2019
    const/16 v24, 0x0

    .line 2021
    .local v24, target:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2022
    .local v15, NA:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_83
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_a8

    .line 2023
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageParser$Activity;

    .line 2024
    .local v23, t:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 2025
    move-object/from16 v24, v23

    .line 2030
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_a8
    if-nez v24, :cond_d2

    .line 2031
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 2033
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2034
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2022
    .restart local v23       #t:Landroid/content/pm/PackageParser$Activity;
    :cond_cf
    add-int/lit8 v17, v17, 0x1

    goto :goto_83

    .line 2037
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_d2
    new-instance v18, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2038
    .local v18, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2039
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 2040
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2041
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/PackageItemInfo;->icon:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 2042
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/PackageItemInfo;->logo:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 2043
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/PackageItemInfo;->labelRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 2044
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2045
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2046
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 2047
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    move v3, v0

    if-nez v3, :cond_150

    .line 2048
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 2050
    :cond_150
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2051
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2052
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2054
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 2055
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_18e

    .line 2056
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2057
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2060
    :cond_18e
    const/4 v3, 0x5

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    .line 2062
    .local v21, setExported:Z
    if-eqz v21, :cond_1a9

    .line 2063
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2068
    :cond_1a9
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2070
    .local v22, str:Ljava/lang/String;
    if-eqz v22, :cond_1ca

    .line 2071
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1c8
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2074
    :cond_1ca
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2076
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_1d7

    .line 2077
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2071
    :cond_1d5
    const/4 v4, 0x0

    goto :goto_1c8

    .line 2080
    :cond_1d7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 2083
    .local v19, outerDepth:I
    :cond_1db
    :goto_1db
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_2dc

    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_1f4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_2dc

    .line 2085
    :cond_1f4
    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1db

    const/4 v3, 0x4

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1db

    .line 2089
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26e

    .line 2090
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 2091
    .local v8, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_22a

    .line 2092
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2094
    :cond_22a
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_264

    .line 2095
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v3, v0

    if-eqz v3, :cond_1db

    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in intent filter at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1db

    .line 2099
    :cond_264
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1db

    .line 2101
    .end local v8           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_26e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_297

    .line 2102
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1db

    .line 2104
    const/4 v3, 0x0

    goto/16 :goto_20

    .line 2108
    :cond_297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v3, v0

    if-eqz v3, :cond_2d7

    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_2d7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1db

    .line 2119
    :cond_2dc
    if-nez v21, :cond_2f1

    .line 2120
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2f5

    const/4 v4, 0x1

    :goto_2ef
    iput-boolean v4, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_2f1
    move-object/from16 v3, v16

    .line 2123
    goto/16 :goto_20

    .line 2120
    :cond_2f5
    const/4 v4, 0x0

    goto :goto_2ef
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "tag"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2500
    .local v6, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_7f

    const/4 v0, 0x3

    if-ne v7, v0, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_7f

    .line 2502
    :cond_14
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_4

    .line 2506
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2507
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2509
    const/4 v0, 0x0

    .line 2524
    :goto_36
    return v0

    .line 2513
    :cond_37
    iget-boolean v0, p0, Landroid/content/pm/PackageParser;->DBG:Z

    if-eqz v0, :cond_7b

    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_7b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2524
    :cond_7f
    const/4 v0, 0x1

    goto :goto_36
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .registers 39
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .line 1454
    .local v16, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1456
    .local v24, pkgName:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1459
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 1461
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_49

    .line 1462
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1463
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_49

    .line 1464
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1465
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1466
    const/4 v4, 0x0

    .line 1754
    :goto_48
    return v4

    .line 1470
    :cond_49
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 1472
    .local v21, manageSpaceActivity:Ljava/lang/String;
    if-eqz v21, :cond_64

    .line 1473
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1477
    :cond_64
    const/16 v4, 0x11

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 1479
    .local v17, allowBackup:Z
    if-eqz v17, :cond_cf

    .line 1480
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const v5, 0x8000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1484
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 1486
    .local v18, backupAgent:Ljava/lang/String;
    if-eqz v18, :cond_cf

    .line 1487
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1493
    const/16 v4, 0x12

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1496
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1498
    :cond_b5
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1501
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1506
    .end local v18           #backupAgent:Ljava/lang/String;
    :cond_cf
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v31

    .line 1508
    .local v31, v:Landroid/util/TypedValue;
    if-eqz v31, :cond_ee

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v4, :cond_ee

    .line 1509
    invoke-virtual/range {v31 .. v31}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1512
    :cond_ee
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1514
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1516
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1519
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_139

    .line 1520
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 1523
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x8

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1527
    :cond_139
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_14a

    .line 1528
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1531
    :cond_14a
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_15b

    .line 1532
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x4

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1535
    :cond_15b
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_174

    .line 1538
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x2

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1541
    :cond_174
    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 1544
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x4000

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1547
    :cond_18d
    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 1550
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1553
    :cond_1a5
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 1556
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x20

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1559
    :cond_1be
    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 1562
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x40

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1565
    :cond_1d6
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 1568
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x100

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1571
    :cond_1ef
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_209

    .line 1574
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x4000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1578
    :cond_209
    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 1580
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_2a8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_21f
    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1582
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2ab

    .line 1583
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 1592
    :goto_23a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1595
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-nez v4, :cond_296

    .line 1597
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2b5

    .line 1598
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 1607
    .local v6, pname:Ljava/lang/CharSequence;
    :goto_26e
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v8, v0

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1610
    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1628
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_296
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1630
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_2bf

    .line 1631
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1632
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1580
    :cond_2a8
    const/4 v4, 0x0

    goto/16 :goto_21f

    .line 1589
    :cond_2ab
    const/16 v4, 0xc

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_23a

    .line 1604
    :cond_2b5
    const/16 v4, 0xb

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #pname:Ljava/lang/CharSequence;
    goto :goto_26e

    .line 1635
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_2bf
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 1639
    .local v19, innerDepth:I
    :cond_2c3
    :goto_2c3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .local v30, type:I
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_4dc

    const/4 v4, 0x3

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_2dc

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v19

    if-le v0, v1, :cond_4dc

    .line 1640
    :cond_2dc
    const/4 v4, 0x3

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_2c3

    const/4 v4, 0x4

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_2c3

    .line 1644
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1645
    .local v29, tagName:Ljava/lang/String;
    const-string v4, "activity"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31f

    .line 1646
    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1647
    .local v15, a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_316

    .line 1648
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1649
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1652
    :cond_316
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c3

    .line 1654
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_31f
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_354

    .line 1655
    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1656
    .restart local v15       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_34a

    .line 1657
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1658
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1661
    :cond_34a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c3

    .line 1663
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_354
    const-string/jumbo v4, "service"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    .line 1664
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v26

    .line 1665
    .local v26, s:Landroid/content/pm/PackageParser$Service;
    if-nez v26, :cond_370

    .line 1666
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1667
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1670
    :cond_370
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c3

    .line 1672
    .end local v26           #s:Landroid/content/pm/PackageParser$Service;
    :cond_37d
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 1673
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v23

    .line 1674
    .local v23, p:Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_399

    .line 1675
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1676
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1679
    :cond_399
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c3

    .line 1681
    .end local v23           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_3a6
    const-string v4, "activity-alias"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3cb

    .line 1682
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1683
    .restart local v15       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_3c1

    .line 1684
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1685
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1688
    :cond_3c1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c3

    .line 1690
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_3cb
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3fb

    .line 1694
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object v11, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_2c3

    .line 1696
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1697
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 1700
    :cond_3fb
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_487

    .line 1701
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1706
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1708
    .local v20, lname:Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 1712
    .local v25, req:Z
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1714
    if-eqz v20, :cond_456

    .line 1715
    if-eqz v25, :cond_45b

    .line 1716
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_43c

    .line 1717
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 1719
    :cond_43c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_456

    .line 1720
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_456
    :goto_456
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2c3

    .line 1723
    :cond_45b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_46c

    .line 1724
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 1726
    :cond_46c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_456

    .line 1727
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_456

    .line 1734
    .end local v20           #lname:Ljava/lang/String;
    .end local v25           #req:Z
    :cond_487
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_498

    .line 1737
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2c3

    .line 1741
    :cond_498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_4d7

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_4d7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2c3

    .line 1754
    .end local v29           #tagName:Ljava/lang/String;
    :cond_4dc
    const/4 v4, 0x1

    goto/16 :goto_48
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 15
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1398
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_1d

    .line 1399
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1403
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1406
    :cond_1d
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1408
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 1410
    .local v5, a:Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_3b

    .line 1411
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1412
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1413
    const/4 v0, 0x0

    .line 1447
    :goto_3a
    return-object v0

    .line 1419
    :cond_3b
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 1421
    .local v8, str:Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v8, :cond_72

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_48
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 1423
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 1427
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 1431
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1433
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 1434
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 1435
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1436
    const/4 v0, 0x0

    goto :goto_3a

    .line 1421
    :cond_72
    const/4 v1, 0x0

    goto :goto_48

    .line 1439
    :cond_74
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 1441
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1442
    const/4 v0, 0x0

    goto :goto_3a

    .line 1445
    :cond_87
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1447
    goto :goto_3a
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z
    .registers 25
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "isActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2600
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2603
    .local v9, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2605
    .local v8, priority:I
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 2607
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 2609
    .local v12, v:Landroid/util/TypedValue;
    if-eqz v12, :cond_30

    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v14, :cond_30

    .line 2610
    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2613
    :cond_30
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 2616
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2618
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2621
    .local v6, outerDepth:I
    :cond_42
    :goto_42
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_182

    const/4 v14, 0x3

    if-ne v11, v14, :cond_52

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_182

    .line 2622
    :cond_52
    const/4 v14, 0x3

    if-eq v11, v14, :cond_42

    const/4 v14, 0x4

    if-eq v11, v14, :cond_42

    .line 2626
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2627
    .local v5, nodeName:Ljava/lang/String;
    const-string v14, "action"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_87

    .line 2628
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2630
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_76

    const-string v14, ""

    if-ne v13, v14, :cond_7d

    .line 2631
    :cond_76
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2632
    const/4 v14, 0x0

    .line 2720
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :goto_7c
    return v14

    .line 2634
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_7d
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2636
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_42

    .line 2637
    .end local v13           #value:Ljava/lang/String;
    :cond_87
    const-string v14, "category"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 2638
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2640
    .restart local v13       #value:Ljava/lang/String;
    if-eqz v13, :cond_a1

    const-string v14, ""

    if-ne v13, v14, :cond_a8

    .line 2641
    :cond_a1
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2642
    const/4 v14, 0x0

    goto :goto_7c

    .line 2644
    :cond_a8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2646
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_42

    .line 2648
    .end local v13           #value:Ljava/lang/String;
    :cond_b2
    const-string v14, "data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13c

    .line 2649
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2652
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2654
    .local v10, str:Ljava/lang/String;
    if-eqz v10, :cond_d3

    .line 2656
    :try_start_cd
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_d3
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_cd .. :try_end_d3} :catch_12e

    .line 2664
    :cond_d3
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2666
    if-eqz v10, :cond_e1

    .line 2667
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 2670
    :cond_e1
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 2672
    .local v4, host:Ljava/lang/String;
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 2674
    .local v7, port:Ljava/lang/String;
    if-eqz v4, :cond_f6

    .line 2675
    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    :cond_f6
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2680
    if-eqz v10, :cond_106

    .line 2681
    const/4 v14, 0x0

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2684
    :cond_106
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2686
    if-eqz v10, :cond_116

    .line 2687
    const/4 v14, 0x1

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2690
    :cond_116
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2692
    if-eqz v10, :cond_126

    .line 2693
    const/4 v14, 0x2

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2696
    :cond_126
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2697
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_42

    .line 2657
    .end local v4           #host:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :catch_12e
    move-exception v3

    .line 2658
    .local v3, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p6, v14

    .line 2659
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2660
    const/4 v14, 0x0

    goto/16 :goto_7c

    .line 2699
    .end local v3           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v10           #str:Ljava/lang/String;
    :cond_13c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v14, v0

    if-eqz v14, :cond_17d

    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_17d
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_42

    .line 2709
    .end local v5           #nodeName:Ljava/lang/String;
    :cond_182
    const-string v14, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 2720
    const/4 v14, 0x1

    goto/16 :goto_7c
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "data"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2532
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2535
    .local v2, sa:Landroid/content/res/TypedArray;
    if-nez p4, :cond_10

    .line 2536
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 2539
    .restart local p4
    :cond_10
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2541
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 2542
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p5, v6

    .line 2543
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v8

    .line 2589
    :goto_1e
    return-object v4

    .line 2547
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2549
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2551
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_3b

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3b

    .line 2553
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2585
    :cond_33
    :goto_33
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2587
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 2589
    goto :goto_1e

    .line 2555
    :cond_3b
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2558
    if-eqz v3, :cond_c6

    .line 2559
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5a

    .line 2560
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2561
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_54
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_58
    move-object v4, v8

    goto :goto_54

    .line 2562
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_5a
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6b

    .line 2563
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_69

    move v4, v7

    :goto_65
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_33

    :cond_69
    move v4, v6

    goto :goto_65

    .line 2564
    :cond_6b
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7d

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7d

    .line 2566
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_33

    .line 2567
    :cond_7d
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8a

    .line 2568
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_33

    .line 2571
    :cond_8a
    iget-boolean v4, p0, Landroid/content/pm/PackageParser;->DBG:Z

    if-eqz v4, :cond_33

    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 2580
    :cond_c6
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 2581
    const/4 p4, 0x0

    goto/16 :goto_33
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 43
    .parameter "res"
    .parameter "parser"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    move-object/from16 v8, p2

    .line 750
    .local v8, attrs:Landroid/util/AttributeSet;
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 751
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 752
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 753
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 755
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 756
    .local v25, pkgName:Ljava/lang/String;
    if-nez v25, :cond_30

    .line 757
    const/16 v4, -0x6a

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 758
    const/4 v4, 0x0

    .line 1172
    :goto_2f
    return-object v4

    .line 762
    :cond_30
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 763
    .local v5, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    .line 765
    .local v15, foundApp:Z
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 767
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 769
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 771
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v4, :cond_67

    .line 772
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 774
    :cond_67
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 776
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_d0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d0

    .line 777
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move v1, v4

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 778
    .local v21, nameError:Ljava/lang/String;
    if-eqz v21, :cond_be

    const-string v4, "android"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 779
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 781
    const/16 v4, -0x6b

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 782
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 784
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_be
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 785
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 788
    .end local v21           #nameError:Ljava/lang/String;
    :cond_d0
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 790
    const/4 v4, 0x4

    const/4 v6, -0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 793
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 796
    const/16 v31, 0x1

    .line 797
    .local v31, supportsSmallScreens:I
    const/16 v30, 0x1

    .line 798
    .local v30, supportsNormalScreens:I
    const/16 v29, 0x1

    .line 799
    .local v29, supportsLargeScreens:I
    const/16 v32, 0x1

    .line 800
    .local v32, supportsXLargeScreens:I
    const/16 v26, 0x1

    .line 801
    .local v26, resizeable:I
    const/4 v12, 0x1

    .line 803
    .local v12, anyDensity:I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    .line 805
    .local v24, outerDepth:I
    :cond_f4
    :goto_f4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v36

    .local v36, type:I
    const/4 v4, 0x1

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_611

    const/4 v4, 0x3

    move/from16 v0, v36

    move v1, v4

    if-ne v0, v1, :cond_10d

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v24

    if-le v0, v1, :cond_611

    .line 806
    :cond_10d
    const/4 v4, 0x3

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_f4

    const/4 v4, 0x4

    move/from16 v0, v36

    move v1, v4

    if-eq v0, v1, :cond_f4

    .line 810
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 811
    .local v33, tagName:Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 812
    if-eqz v15, :cond_135

    .line 818
    const-string v4, "PackageParser"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f4

    .line 824
    :cond_135
    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 825
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 826
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 828
    :cond_149
    const-string/jumbo v4, "permission-group"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 829
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 830
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 832
    :cond_166
    const-string/jumbo v4, "permission"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 833
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 834
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 836
    :cond_183
    const-string/jumbo v4, "permission-tree"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 837
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 838
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 840
    :cond_1a0
    const-string/jumbo v4, "uses-permission"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 841
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 846
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 849
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 851
    if-eqz v20, :cond_1d7

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    .line 852
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_1d7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 857
    .end local v20           #name:Ljava/lang/String;
    :cond_1dc
    const-string/jumbo v4, "uses-configuration"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 858
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 859
    .local v13, cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 861
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 864
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 867
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_221

    .line 870
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 872
    :cond_221
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 875
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 878
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 880
    :cond_23f
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 881
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 885
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_24c
    const-string/jumbo v4, "uses-feature"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bd

    .line 886
    new-instance v14, Landroid/content/pm/FeatureInfo;

    invoke-direct {v14}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 887
    .local v14, fi:Landroid/content/pm/FeatureInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 891
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 893
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_281

    .line 894
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 898
    :cond_281
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_293

    .line 901
    iget v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    .line 903
    :cond_293
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 904
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-nez v4, :cond_2a1

    .line 905
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 907
    :cond_2a1
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_2b8

    .line 910
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 911
    .restart local v13       #cPref:Landroid/content/pm/ConfigurationInfo;
    iget v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 912
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_2b8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 917
    .end local v14           #fi:Landroid/content/pm/FeatureInfo;
    :cond_2bd
    const-string/jumbo v4, "uses-sdk"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_455

    .line 918
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v4, :cond_448

    .line 919
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 922
    const/16 v19, 0x0

    .line 923
    .local v19, minVers:I
    const/16 v18, 0x0

    .line 924
    .local v18, minCode:Ljava/lang/String;
    const/16 v35, 0x0

    .line 925
    .local v35, targetVers:I
    const/16 v34, 0x0

    .line 927
    .local v34, targetCode:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 929
    .local v37, val:Landroid/util/TypedValue;
    if-eqz v37, :cond_303

    .line 930
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_370

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_370

    .line 931
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 938
    :cond_303
    :goto_303
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v37

    .line 940
    if-eqz v37, :cond_327

    .line 941
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_379

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_379

    .line 942
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v34, v18

    .line 949
    :cond_327
    :goto_327
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 951
    if-eqz v18, :cond_3a0

    .line 952
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3dc

    .line 953
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_380

    .line 954
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 960
    :goto_366
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 961
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 934
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_370
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v35, v19

    goto :goto_303

    .line 945
    :cond_379
    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v35, v0

    goto :goto_327

    .line 957
    :cond_380
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_366

    .line 963
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_3a0
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v19

    move v1, v4

    if-le v0, v1, :cond_3dc

    .line 964
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 966
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 967
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 970
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_3dc
    if-eqz v34, :cond_44d

    .line 971
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_442

    .line 972
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_422

    .line 973
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 979
    :goto_418
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 980
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 976
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_422
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_418

    .line 983
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_442
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x2710

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 990
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_448
    :goto_448
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 986
    .restart local v18       #minCode:Ljava/lang/String;
    .restart local v19       #minVers:I
    .restart local v34       #targetCode:Ljava/lang/String;
    .restart local v35       #targetVers:I
    .restart local v37       #val:Landroid/util/TypedValue;
    :cond_44d
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v35

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_448

    .line 992
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v34           #targetCode:Ljava/lang/String;
    .end local v35           #targetVers:I
    .end local v37           #val:Landroid/util/TypedValue;
    :cond_455
    const-string/jumbo v4, "supports-screens"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ae

    .line 993
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 998
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v31

    .line 1001
    const/4 v4, 0x2

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v30

    .line 1004
    const/4 v4, 0x3

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 1007
    const/4 v4, 0x5

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v32

    .line 1010
    const/4 v4, 0x4

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v26

    .line 1013
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 1017
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1019
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1021
    :cond_4ae
    const-string/jumbo v4, "protected-broadcast"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f9

    .line 1022
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1027
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1030
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1032
    if-eqz v20, :cond_4f4

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_4f4

    .line 1033
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v4, :cond_4e0

    .line 1034
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1036
    :cond_4e0
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f4

    .line 1037
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_4f4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1043
    .end local v20           #name:Ljava/lang/String;
    :cond_4f9
    const-string v4, "instrumentation"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_515

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 1044
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 1045
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 1048
    :cond_515
    const-string/jumbo v4, "original-package"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55f

    .line 1049
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1052
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 1054
    .local v23, orig:Ljava/lang/String;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_557

    .line 1055
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v4, :cond_54f

    .line 1056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1057
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1059
    :cond_54f
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_557
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1064
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1066
    .end local v23           #orig:Ljava/lang/String;
    :cond_55f
    const-string v4, "adopt-permissions"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59b

    .line 1067
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1070
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1073
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1075
    if-eqz v20, :cond_596

    .line 1076
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_58e

    .line 1077
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1079
    :cond_58e
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_596
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1084
    .end local v20           #name:Ljava/lang/String;
    :cond_59b
    const-string/jumbo v4, "uses-gl-texture"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ac

    .line 1086
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1089
    :cond_5ac
    const-string v4, "compatible-screens"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5bc

    .line 1091
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1094
    :cond_5bc
    const-string v4, "eat-comment"

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5cc

    .line 1096
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1106
    :cond_5cc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v4, v0

    if-eqz v4, :cond_60c

    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_60c
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f4

    .line 1114
    .end local v33           #tagName:Ljava/lang/String;
    :cond_611
    if-nez v15, :cond_627

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_627

    .line 1115
    const/4 v4, 0x0

    const-string v6, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v6, p4, v4

    .line 1116
    const/16 v4, -0x6d

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1119
    :cond_627
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v4

    .line 1120
    .local v11, NP:I
    const/16 v16, 0x0

    .line 1121
    .local v16, implicitPerms:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .local v17, ip:I
    :goto_62e
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_642

    .line 1122
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v22, v4, v17

    .line 1124
    .local v22, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move v6, v0

    if-lt v4, v6, :cond_6bb

    .line 1139
    .end local v22           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_642
    if-eqz v16, :cond_64d

    .line 1140
    const-string v4, "PackageParser"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_64d
    if-ltz v31, :cond_658

    if-lez v31, :cond_660

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_660

    .line 1146
    :cond_658
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1148
    :cond_660
    if-eqz v30, :cond_66a

    .line 1149
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1151
    :cond_66a
    if-ltz v29, :cond_675

    if-lez v29, :cond_67d

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_67d

    .line 1154
    :cond_675
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1156
    :cond_67d
    if-ltz v32, :cond_689

    if-lez v32, :cond_692

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_692

    .line 1159
    :cond_689
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1161
    :cond_692
    if-ltz v26, :cond_69d

    if-lez v26, :cond_6a5

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_6a5

    .line 1164
    :cond_69d
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1166
    :cond_6a5
    if-ltz v12, :cond_6b0

    if-lez v12, :cond_6b8

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_6b8

    .line 1169
    :cond_6b0
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_6b8
    move-object v4, v5

    .line 1172
    goto/16 :goto_2f

    .line 1127
    .restart local v22       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_6bb
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f9

    .line 1128
    if-nez v16, :cond_6fd

    .line 1129
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #implicitPerms:Ljava/lang/StringBuilder;
    const/16 v4, 0x80

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1130
    .restart local v16       #implicitPerms:Ljava/lang/StringBuilder;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v4, ": compat added "

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :goto_6e4
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_6f9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_62e

    .line 1133
    :cond_6fd
    const/16 v4, 0x20

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6e4
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z
    .registers 16
    .parameter "owner"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"
    .parameter "logoRes"

    .prologue
    const/4 v5, 0x0

    .line 1760
    invoke-virtual {p5, p6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 1762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not specify android:name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v5

    move v3, v5

    .line 1785
    :goto_1d
    return v3

    .line 1766
    :cond_1e
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1768
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_2e

    move v3, v5

    .line 1769
    goto :goto_1d

    .line 1772
    :cond_2e
    invoke-virtual {p5, p8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1773
    .local v0, iconVal:I
    if-eqz v0, :cond_39

    .line 1774
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1775
    const/4 v3, 0x0

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1778
    :cond_39
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1779
    .local v2, v:Landroid/util/TypedValue;
    if-eqz v2, :cond_4b

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_4b

    .line 1780
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1783
    :cond_4b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1785
    const/4 v3, 0x1

    goto :goto_1d
.end method

.method public static parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 14
    .parameter "packageFilePath"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const-string v10, "PackageParser"

    .line 597
    const/4 v7, 0x0

    .line 598
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 600
    .local v0, assmgr:Landroid/content/res/AssetManager;
    :try_start_5
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_48

    .line 601
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .local v1, assmgr:Landroid/content/res/AssetManager;
    :try_start_a
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    .line 602
    .local v3, cookie:I
    const-string v8, "AndroidManifest.xml"

    invoke-virtual {v1, v3, v8}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_9a

    move-result-object v7

    .line 609
    move-object v2, v7

    .line 610
    .local v2, attrs:Landroid/util/AttributeSet;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    .line 611
    .local v5, errors:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 613
    .local v6, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :try_start_19
    invoke-static {v7, v2, p1, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_1c} :catch_7a

    move-result-object v6

    .line 619
    if-eqz v7, :cond_22

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_22
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 622
    :cond_27
    :goto_27
    if-nez v6, :cond_97

    .line 623
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsePackageLite error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v11

    .line 626
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :goto_47
    return-object v8

    .line 603
    :catch_48
    move-exception v8

    move-object v4, v8

    .line 604
    .local v4, e:Ljava/lang/Exception;
    :goto_4a
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 605
    :cond_4f
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v11

    .line 607
    goto :goto_47

    .line 614
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #cookie:I
    .restart local v5       #errors:[Ljava/lang/String;
    .restart local v6       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :catch_69
    move-exception v4

    .line 615
    .local v4, e:Ljava/io/IOException;
    :try_start_6a
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_8b

    .line 619
    if-eqz v7, :cond_74

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_74
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto :goto_27

    .line 616
    .end local v4           #e:Ljava/io/IOException;
    :catch_7a
    move-exception v4

    .line 617
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7b
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_8b

    .line 619
    if-eqz v7, :cond_85

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_85
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto :goto_27

    .line 619
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_8b
    move-exception v8

    if-eqz v7, :cond_91

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 620
    :cond_91
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_96
    throw v8

    :cond_97
    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v6

    .line 626
    goto :goto_47

    .line 603
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    :catch_9a
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    goto :goto_4a
.end method

.method private static parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    .registers 15
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 696
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v6, :cond_c

    if-ne v5, v10, :cond_4

    .line 700
    :cond_c
    if-eq v5, v6, :cond_14

    .line 701
    const-string v6, "No start tag found"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 730
    :goto_13
    return-object v6

    .line 704
    :cond_14
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_18

    .line 706
    :cond_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "manifest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 707
    const-string v6, "No <manifest> tag"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 708
    goto :goto_13

    .line 710
    :cond_2a
    const-string/jumbo v6, "package"

    invoke-interface {p1, v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3f

    .line 712
    :cond_39
    const-string v6, "<manifest> does not specify package"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 713
    goto :goto_13

    .line 715
    :cond_3f
    invoke-static {v4, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, nameError:Ljava/lang/String;
    if-eqz v3, :cond_6e

    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<manifest> specifies bad package name \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v9

    move-object v6, v8

    .line 719
    goto :goto_13

    .line 721
    :cond_6e
    const/4 v2, -0x1

    .line 722
    .local v2, installLocation:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_70
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_87

    .line 723
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, attr:Ljava/lang/String;
    const-string v6, "installLocation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 725
    const/4 v6, -0x1

    invoke-interface {p1, v1, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    .line 730
    .end local v0           #attr:Ljava/lang/String;
    :cond_87
    new-instance v6, Landroid/content/pm/PackageParser$PackageLite;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;I)V

    goto :goto_13

    .line 722
    .restart local v0       #attr:Ljava/lang/String;
    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_70
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 661
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v3, :cond_c

    if-ne v2, v7, :cond_4

    .line 665
    :cond_c
    if-eq v2, v3, :cond_14

    .line 666
    const-string v3, "No start tag found"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 687
    :goto_13
    return-object v3

    .line 669
    :cond_14
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_18

    .line 671
    :cond_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manifest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 672
    const-string v3, "No <manifest> tag"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 673
    goto :goto_13

    .line 675
    :cond_2a
    const-string/jumbo v3, "package"

    invoke-interface {p1, v5, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3f

    .line 677
    :cond_39
    const-string v3, "<manifest> does not specify package"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 678
    goto :goto_13

    .line 680
    :cond_3f
    invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, nameError:Ljava/lang/String;
    if-eqz v0, :cond_6e

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad package name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v6

    move-object v3, v5

    .line 684
    goto :goto_13

    .line 687
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_13
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1298
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1301
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1306
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1307
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1308
    const/4 v3, 0x0

    .line 1343
    :goto_32
    return-object v3

    .line 1313
    :cond_33
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1315
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 1316
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1319
    :cond_4e
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1323
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1327
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1329
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7a

    .line 1330
    const/4 v3, 0x0

    const-string v4, "<permission> does not specify protectionLevel"

    aput-object v4, p5, v3

    .line 1331
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1332
    const/4 v3, 0x0

    goto :goto_32

    .line 1335
    :cond_7a
    const-string v13, "<permission>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 1337
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1338
    const/4 v3, 0x0

    goto :goto_32

    .line 1341
    :cond_95
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1343
    goto :goto_32
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1263
    .local v14, perm:Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1266
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v7, "<permission-group>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1271
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1272
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1273
    const/4 v3, 0x0

    .line 1290
    :goto_32
    return-object v3

    .line 1276
    :cond_33
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 1280
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1282
    const-string v13, "<permission-group>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1284
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1285
    const/4 v3, 0x0

    goto :goto_32

    .line 1288
    :cond_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1290
    goto :goto_32
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 23
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1351
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1354
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission-tree>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1359
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1360
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1361
    const/4 v3, 0x0

    .line 1389
    :goto_32
    return-object v3

    .line 1364
    :cond_33
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1366
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1367
    .local v16, index:I
    if-lez v16, :cond_4e

    .line 1368
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1370
    :cond_4e
    if-gez v16, :cond_73

    .line 1371
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<permission-tree> name has less than three segments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 1373
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1374
    const/4 v3, 0x0

    goto :goto_32

    .line 1377
    :cond_73
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1378
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1379
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 1381
    const-string v13, "<permission-tree>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 1383
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1384
    const/4 v3, 0x0

    goto :goto_32

    .line 1387
    :cond_9b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1389
    goto :goto_32
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .registers 25
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2129
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2132
    .local v16, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_37

    .line 2133
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/16 v11, 0x8

    const/16 v12, 0xe

    const/4 v13, 0x6

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<provider>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2144
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2147
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v4}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v3, v4}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 2148
    .local v7, p:Landroid/content/pm/PackageParser$Provider;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_64

    .line 2149
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2150
    const/4 v3, 0x0

    .line 2221
    :goto_63
    return-object v3

    .line 2153
    :cond_64
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2156
    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 2159
    .local v14, cpname:Ljava/lang/String;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 2163
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 2165
    .local v15, permission:Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2167
    .local v17, str:Ljava/lang/String;
    if-nez v17, :cond_a4

    .line 2168
    move-object/from16 v17, v15

    .line 2170
    :cond_a4
    if-nez v17, :cond_11b

    .line 2171
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 2176
    :goto_b1
    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2178
    if-nez v17, :cond_bf

    .line 2179
    move-object/from16 v17, v15

    .line 2181
    :cond_bf
    if-nez v17, :cond_130

    .line 2182
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 2188
    :goto_cc
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2192
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 2196
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 2200
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 2202
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    if-eqz v3, :cond_145

    .line 2205
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v4, v0

    if-ne v3, v4, :cond_145

    .line 2206
    const/4 v3, 0x0

    const-string v4, "Heavy-weight applications can not have providers in main process"

    aput-object v4, p6, v3

    .line 2207
    const/4 v3, 0x0

    goto/16 :goto_63

    .line 2173
    :cond_11b
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_12b
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_b1

    :cond_12e
    const/4 v4, 0x0

    goto :goto_12b

    .line 2184
    :cond_130
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_143

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_140
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_cc

    :cond_143
    const/4 v4, 0x0

    goto :goto_140

    .line 2211
    :cond_145
    if-nez v14, :cond_14f

    .line 2212
    const/4 v3, 0x0

    const-string v4, "<provider> does not incude authorities attribute"

    aput-object v4, p6, v3

    .line 2213
    const/4 v3, 0x0

    goto/16 :goto_63

    .line 2215
    :cond_14f
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 2217
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16a

    .line 2218
    const/4 v3, 0x0

    goto/16 :goto_63

    :cond_16a
    move-object v3, v7

    .line 2221
    goto/16 :goto_63
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 29
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2231
    .local v14, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_2f4

    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_1a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_2f4

    .line 2233
    :cond_1a
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    const/4 v5, 0x4

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 2237
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2238
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_4

    .line 2240
    const/4 v5, 0x0

    .line 2395
    :goto_4d
    return v5

    .line 2243
    :cond_4e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "grant-uri-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 2244
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2247
    .local v19, sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2249
    .local v15, pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2251
    .local v20, str:Ljava/lang/String;
    if-eqz v20, :cond_7c

    .line 2252
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2255
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_7c
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2257
    if-eqz v20, :cond_92

    .line 2258
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2261
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_92
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2263
    if-eqz v20, :cond_a8

    .line 2264
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2267
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_a8
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2269
    if-eqz v15, :cond_f9

    .line 2270
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_d7

    .line 2271
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 2272
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2280
    :goto_ca
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2292
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2274
    :cond_d7
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v5

    .line 2275
    .local v11, N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/os/PatternMatcher;

    .line 2276
    .local v13, newp:[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2277
    aput-object v15, v13, v11

    .line 2278
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_ca

    .line 2283
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/os/PatternMatcher;
    :cond_f9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v5, v0

    if-eqz v5, :cond_139

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_139
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2294
    .end local v15           #pa:Landroid/os/PatternMatcher;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #str:Ljava/lang/String;
    :cond_13e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "path-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    .line 2295
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2298
    .restart local v19       #sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2300
    .local v15, pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2302
    .local v17, permission:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2304
    .local v18, readPermission:Ljava/lang/String;
    if-nez v18, :cond_16f

    .line 2305
    move-object/from16 v18, v17

    .line 2307
    :cond_16f
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2309
    .local v22, writePermission:Ljava/lang/String;
    if-nez v22, :cond_17d

    .line 2310
    move-object/from16 v22, v17

    .line 2313
    :cond_17d
    const/4 v12, 0x0

    .line 2314
    .local v12, havePerm:Z
    if-eqz v18, :cond_185

    .line 2315
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 2316
    const/4 v12, 0x1

    .line 2318
    :cond_185
    if-eqz v22, :cond_18c

    .line 2319
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    .line 2320
    const/4 v12, 0x1

    .line 2323
    :cond_18c
    if-nez v12, :cond_1d3

    .line 2325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v5, v0

    if-eqz v5, :cond_1ce

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_1ce
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2335
    :cond_1d3
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2337
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_1ed

    .line 2338
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2342
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1ed
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2344
    if-eqz v16, :cond_207

    .line 2345
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2349
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_207
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2351
    if-eqz v16, :cond_221

    .line 2352
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2356
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_221
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2358
    if-eqz v15, :cond_26a

    .line 2359
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v5, :cond_248

    .line 2360
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/PathPermission;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 2361
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2380
    :goto_243
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2363
    :cond_248
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v5

    .line 2364
    .restart local v11       #N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/content/pm/PathPermission;

    .line 2365
    .local v13, newp:[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2366
    aput-object v15, v13, v11

    .line 2367
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_243

    .line 2371
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/content/pm/PathPermission;
    :cond_26a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v5, v0

    if-eqz v5, :cond_2aa

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_2aa
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2384
    .end local v12           #havePerm:Z
    .end local v15           #pa:Landroid/content/pm/PathPermission;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #permission:Ljava/lang/String;
    .end local v18           #readPermission:Ljava/lang/String;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v22           #writePermission:Ljava/lang/String;
    :cond_2af
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v5, v0

    if-eqz v5, :cond_2ef

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <provider>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_2ef
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2395
    :cond_2f4
    const/4 v5, 0x1

    goto/16 :goto_4d
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .registers 28
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2401
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 2404
    .local v17, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_35

    .line 2405
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<service>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2416
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2419
    new-instance v16, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 2420
    .local v16, s:Landroid/content/pm/PackageParser$Service;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_66

    .line 2421
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2422
    const/4 v3, 0x0

    .line 2490
    :goto_65
    return-object v3

    .line 2425
    :cond_66
    const/4 v3, 0x5

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 2427
    .local v18, setExported:Z
    if-eqz v18, :cond_81

    .line 2428
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 2432
    :cond_81
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 2434
    .local v19, str:Ljava/lang/String;
    if-nez v19, :cond_bf

    .line 2435
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2440
    :goto_9b
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2442
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    if-eqz v3, :cond_d7

    .line 2445
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v4, v0

    if-ne v3, v4, :cond_d7

    .line 2446
    const/4 v3, 0x0

    const-string v4, "Heavy-weight applications can not have services in main process"

    aput-object v4, p6, v3

    .line 2447
    const/4 v3, 0x0

    goto :goto_65

    .line 2437
    :cond_bf
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_d2
    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_9b

    :cond_d5
    const/4 v4, 0x0

    goto :goto_d2

    .line 2451
    :cond_d7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2454
    .local v15, outerDepth:I
    :cond_db
    :goto_db
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_19e

    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_f1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_19e

    .line 2456
    :cond_f1
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_db

    const/4 v3, 0x4

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_db

    .line 2460
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 2461
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 2462
    .local v8, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_127

    .line 2463
    const/4 v3, 0x0

    goto/16 :goto_65

    .line 2466
    :cond_127
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 2467
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_130
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 2468
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_db

    .line 2470
    const/4 v3, 0x0

    goto/16 :goto_65

    .line 2474
    :cond_159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v3, v0

    if-eqz v3, :cond_199

    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <service>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_199
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_db

    .line 2486
    :cond_19e
    if-nez v18, :cond_1b3

    .line 2487
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b7

    const/4 v4, 0x1

    :goto_1b1
    iput-boolean v4, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_1b3
    move-object/from16 v3, v16

    .line 2490
    goto/16 :goto_65

    .line 2487
    :cond_1b7
    const/4 v4, 0x0

    goto :goto_1b1
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1
    .parameter "compatibilityModeEnabled"

    .prologue
    .line 3262
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 3263
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .registers 5
    .parameter "str"

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 738
    .local v0, N:I
    new-array v2, v0, [B

    .line 739
    .local v2, sig:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 740
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 742
    :cond_13
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "requiresSeparator"

    .prologue
    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 631
    .local v0, N:I
    const/4 v3, 0x0

    .line 632
    .local v3, hasSep:Z
    const/4 v2, 0x1

    .line 633
    .local v2, front:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v0, :cond_50

    .line 634
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 635
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_15

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v1, v5, :cond_21

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_21

    .line 636
    :cond_1d
    const/4 v2, 0x0

    .line 633
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 639
    :cond_21
    if-nez v2, :cond_2f

    .line 640
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2b

    const/16 v5, 0x39

    if-le v1, v5, :cond_1e

    :cond_2b
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1e

    .line 644
    :cond_2f
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_36

    .line 645
    const/4 v3, 0x1

    .line 646
    const/4 v2, 0x1

    .line 647
    goto :goto_1e

    .line 649
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .end local v1           #c:C
    :goto_4f
    return-object v5

    :cond_50
    if-nez v3, :cond_54

    if-nez p1, :cond_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_4f

    :cond_56
    const-string v5, "must have at least one \'.\' separator"

    goto :goto_4f
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 23
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 459
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 462
    const/4 v15, 0x0

    .line 463
    .local v15, readBuffer:[B
    sget-object v18, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 464
    :try_start_c
    sget-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 465
    .local v16, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_1d

    .line 466
    const/16 v17, 0x0

    sput-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 467
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 469
    :cond_1d
    if-nez v15, :cond_2e

    .line 470
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v15, v0

    .line 471
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 473
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_2e
    monitor-exit v18
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_96

    .line 476
    :try_start_2f
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 478
    .local v12, jarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 480
    .local v5, certs:[Ljava/security/cert/Certificate;
    and-int/lit8 v17, p2, 0x1

    if-eqz v17, :cond_99

    .line 485
    const-string v17, "AndroidManifest.xml"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 486
    .local v11, jarEntry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 487
    if-nez v5, :cond_185

    .line 488
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 492
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_93
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2f .. :try_end_93} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_93} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_93} :catch_257

    .line 493
    const/16 v17, 0x0

    .line 586
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v11           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :goto_95
    return v17

    .line 473
    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_96
    move-exception v17

    :try_start_97
    monitor-exit v18
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v17

    .line 509
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_99
    :try_start_99
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 510
    .local v7, entries:Ljava/util/Enumeration;
    :cond_9d
    :goto_9d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_185

    .line 511
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 512
    .local v13, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_9d

    .line 513
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9d

    .line 514
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 521
    .local v14, localCerts:[Ljava/security/cert/Certificate;
    if-nez v14, :cond_106

    .line 522
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 526
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 527
    const/16 v17, 0x0

    goto :goto_95

    .line 528
    :cond_106
    if-nez v5, :cond_10a

    .line 529
    move-object v5, v14

    goto :goto_9d

    .line 532
    :cond_10a
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10b
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_9d

    .line 533
    const/4 v8, 0x0

    .line 534
    .local v8, found:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_116
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_12e

    .line 535
    aget-object v17, v5, v9

    if-eqz v17, :cond_17f

    aget-object v17, v5, v9

    aget-object v18, v14, v10

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17f

    .line 537
    const/4 v8, 0x1

    .line 541
    :cond_12e
    if-eqz v8, :cond_13e

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_182

    .line 542
    :cond_13e
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 546
    const/16 v17, -0x68

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 547
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 534
    :cond_17f
    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 532
    :cond_182
    add-int/lit8 v9, v9, 0x1

    goto :goto_10b

    .line 553
    .end local v7           #entries:Ljava/util/Enumeration;
    .end local v8           #found:Z
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #je:Ljava/util/jar/JarEntry;
    .end local v14           #localCerts:[Ljava/security/cert/Certificate;
    :cond_185
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 555
    sget-object v17, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v17
    :try_end_18b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_99 .. :try_end_18b} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_18b} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_18b} :catch_257

    .line 556
    :try_start_18b
    sput-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 557
    monitor-exit v17
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_1c0

    .line 559
    if-eqz v5, :cond_1f5

    :try_start_190
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_1f5

    .line 560
    array-length v4, v5

    .line 561
    .local v4, N:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 562
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1a8
    if-ge v9, v4, :cond_289

    .line 563
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/pm/Signature;

    aget-object v19, v5, v9

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v18, v17, v9
    :try_end_1bd
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_190 .. :try_end_1bd} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1bd} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_1bd} :catch_257

    .line 562
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a8

    .line 557
    .end local v4           #N:I
    .end local v9           #i:I
    :catchall_1c0
    move-exception v18

    :try_start_1c1
    monitor-exit v17
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    :try_start_1c2
    throw v18
    :try_end_1c3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1c2 .. :try_end_1c3} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c3} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1c2 .. :try_end_1c3} :catch_257

    .line 572
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_1c3
    move-exception v17

    move-object/from16 v6, v17

    .line 573
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 575
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 567
    .end local v6           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_1f5
    :try_start_1f5
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_221
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1f5 .. :try_end_221} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_221} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_221} :catch_257

    .line 570
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 576
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_225
    move-exception v17

    move-object/from16 v6, v17

    .line 577
    .local v6, e:Ljava/io/IOException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 579
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 580
    .end local v6           #e:Ljava/io/IOException;
    :catch_257
    move-exception v17

    move-object/from16 v6, v17

    .line 581
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    const/16 v17, -0x66

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 583
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 586
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v4       #N:I
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v9       #i:I
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_289
    const/16 v17, 0x1

    goto/16 :goto_95
.end method

.method public getParseError()I
    .registers 2

    .prologue
    .line 368
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .registers 23
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 373
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 375
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 376
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_43

    .line 377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v15, v0

    if-eqz v15, :cond_3a

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping dir: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3a
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 379
    const/4 v15, 0x0

    .line 455
    :goto_42
    return-object v15

    .line 381
    :cond_43
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_83

    and-int/lit8 v15, p4, 0x4

    if-eqz v15, :cond_83

    .line 383
    and-int/lit8 v15, p4, 0x1

    if-nez v15, :cond_7a

    .line 386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v15, v0

    if-eqz v15, :cond_7a

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping non-package file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_7a
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 389
    const/4 v15, 0x0

    goto :goto_42

    .line 395
    :cond_83
    const/4 v12, 0x0

    .line 396
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 397
    .local v6, assmgr:Landroid/content/res/AssetManager;
    const/4 v5, 0x1

    .line 399
    .local v5, assetError:Z
    :try_start_86
    new-instance v7, Landroid/content/res/AssetManager;

    invoke-direct {v7}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8b} :catch_1aa

    .line 400
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .local v7, assmgr:Landroid/content/res/AssetManager;
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v7, v15}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    .line 401
    .local v8, cookie:I
    if-eqz v8, :cond_ae

    .line 402
    const-string v15, "AndroidManifest.xml"

    invoke-virtual {v7, v8, v15}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9b} :catch_d4

    move-result-object v12

    .line 403
    const/4 v5, 0x0

    :cond_9d
    :goto_9d
    move-object v6, v7

    .line 411
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .end local v8           #cookie:I
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    :goto_9e
    if-eqz v5, :cond_fa

    .line 412
    if-eqz v6, :cond_a5

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 413
    :cond_a5
    const/16 v15, -0x65

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 414
    const/4 v15, 0x0

    goto :goto_42

    .line 405
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .restart local v7       #assmgr:Landroid/content/res/AssetManager;
    .restart local v8       #cookie:I
    :cond_ae
    :try_start_ae
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v15, v0

    if-eqz v15, :cond_9d

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed adding asset path:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d3} :catch_d4

    goto :goto_9d

    .line 407
    .end local v8           #cookie:I
    :catch_d4
    move-exception v15

    move-object v9, v15

    move-object v6, v7

    .line 408
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    .local v9, e:Ljava/lang/Exception;
    :goto_d7
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    .line 416
    .end local v9           #e:Ljava/lang/Exception;
    :cond_fa
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    .line 417
    .local v11, errorText:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 418
    .local v13, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v10, 0x0

    .line 421
    .local v10, errorException:Ljava/lang/Exception;
    :try_start_ff
    new-instance v14, Landroid/content/res/Resources;

    const/4 v15, 0x0

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, p3

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 422
    .local v14, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move/from16 v3, p4

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_114} :catch_14b

    move-result-object v13

    .line 429
    .end local v14           #res:Landroid/content/res/Resources;
    :goto_115
    if-nez v13, :cond_192

    .line 430
    if-eqz v10, :cond_156

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v15, v0

    if-eqz v15, :cond_12f

    const-string v15, "PackageParser"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    :cond_12f
    :goto_12f
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 438
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mParseError:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_148

    .line 440
    const/16 v15, -0x6c

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 442
    :cond_148
    const/4 v15, 0x0

    goto/16 :goto_42

    .line 423
    :catch_14b
    move-exception v15

    move-object v9, v15

    .line 424
    .restart local v9       #e:Ljava/lang/Exception;
    move-object v10, v9

    .line 425
    const/16 v15, -0x66

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_115

    .line 433
    .end local v9           #e:Ljava/lang/Exception;
    :cond_156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser;->DBG:Z

    move v15, v0

    if-eqz v15, :cond_12f

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    .line 445
    :cond_192
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 446
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 449
    move-object/from16 v0, p2

    move-object v1, v13

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v15, v0

    iput-object v15, v13, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 453
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v15, v13

    .line 455
    goto/16 :goto_42

    .line 407
    .end local v10           #errorException:Ljava/lang/Exception;
    .end local v11           #errorText:[Ljava/lang/String;
    .end local v13           #pkg:Landroid/content/pm/PackageParser$Package;
    :catch_1aa
    move-exception v15

    move-object v9, v15

    goto/16 :goto_d7
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .parameter "procs"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 178
    return-void
.end method
