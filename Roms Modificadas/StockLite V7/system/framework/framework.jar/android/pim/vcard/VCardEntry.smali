.class public Landroid/pim/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardEntry$Property;,
        Landroid/pim/vcard/VCardEntry$PhotoData;,
        Landroid/pim/vcard/VCardEntry$ImData;,
        Landroid/pim/vcard/VCardEntry$OrganizationData;,
        Landroid/pim/vcard/VCardEntry$PostalData;,
        Landroid/pim/vcard/VCardEntry$EmailData;,
        Landroid/pim/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardEntry"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 483
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardEntry;-><init>(I)V

    .line 484
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 488
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .registers 3
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput p1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    .line 492
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 493
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 534
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 13
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 675
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 678
    :cond_b
    iget-object v6, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 553
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 556
    :cond_b
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .registers 3
    .parameter "nickName"

    .prologue
    .line 524
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 527
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .registers 4
    .parameter "note"

    .prologue
    .line 682
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 685
    :cond_c
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 496
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v7, :cond_b

    .line 497
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 499
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, trimed:Ljava/lang/String;
    const/4 v7, 0x6

    if-eq p1, v7, :cond_1f

    iget v7, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 503
    :cond_1f
    move-object v2, v6

    .line 519
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_20
    new-instance v5, Landroid/pim/vcard/VCardEntry$PhoneData;

    invoke-direct {v5, p1, v2, p3, p4}, Landroid/pim/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 520
    .local v5, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    return-void

    .line 505
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v5           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 506
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v4, :cond_3c

    .line 507
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 510
    .local v1, ch:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 517
    .end local v1           #ch:C
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_20
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .registers 7
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 689
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_c

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 692
    :cond_c
    new-instance v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/pim/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 693
    .local v0, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 541
    :cond_c
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Landroid/pim/vcard/VCardEntry;
    .registers 2
    .parameter "resolver"

    .prologue
    .line 1385
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;
    .registers 3
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1390
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 565
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_65

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_65

    .line 566
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_37

    .line 567
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_37
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 573
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 577
    .end local v1           #elem:Ljava/lang/String;
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 579
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_64
    return-object v5

    :cond_65
    const/4 v5, 0x0

    goto :goto_64
.end method

.method private constructDisplayName()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1076
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1077
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1095
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1096
    const-string v0, ""

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1098
    :cond_15
    return-void

    .line 1078
    :cond_16
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1079
    :cond_26
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1081
    :cond_39
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1083
    :cond_49
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1085
    :cond_58
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 1086
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1087
    :cond_71
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 1088
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_d

    .line 1089
    :cond_8a
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 1090
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    iget v1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_d

    .line 1091
    :cond_a8
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1092
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_d
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1068
    :cond_b
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 739
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 743
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_d

    .line 758
    .end local v0           #size:I
    :cond_c
    :goto_c
    return-void

    .line 746
    .restart local v0       #size:I
    :cond_d
    const/4 v1, 0x5

    if-le v0, v1, :cond_11

    .line 747
    const/4 v0, 0x5

    .line 750
    :cond_11
    packed-switch v0, :pswitch_data_42

    .line 756
    :goto_14
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_c

    .line 752
    :pswitch_1e
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 753
    :pswitch_27
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 754
    :pswitch_30
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 755
    :pswitch_39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_14

    .line 750
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .registers 19
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, phoneticName:Ljava/lang/String;
    if-nez p2, :cond_b

    .line 594
    sget-object p2, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 598
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 599
    .local v13, size:I
    packed-switch v13, :pswitch_data_8c

    .line 611
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 614
    .local v4, companyName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v10, i:I
    :goto_22
    if-ge v10, v13, :cond_5a

    .line 616
    const/4 v2, 0x1

    if-le v10, v2, :cond_2c

    .line 617
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :cond_2c
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 601
    .end local v4           #companyName:Ljava/lang/String;
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_3e
    const-string v4, ""

    .line 602
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 624
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v5, departmentName:Ljava/lang/String;
    :goto_41
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_5f

    .line 627
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 646
    :goto_4d
    return-void

    .line 606
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_4e
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 607
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 608
    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_41

    .line 621
    .end local v5           #departmentName:Ljava/lang/String;
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .restart local v9       #builder:Ljava/lang/StringBuilder;
    .restart local v10       #i:I
    :cond_5a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_41

    .line 630
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    :cond_5f
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_65
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 633
    .local v12, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v2, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-nez v2, :cond_65

    iget-object v2, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-nez v2, :cond_65

    .line 637
    iput-object v4, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 638
    iput-object v5, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 639
    move/from16 v0, p4

    move-object v1, v12

    iput-boolean v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto :goto_4d

    .line 645
    .end local v12           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_83
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 599
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_4e
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 768
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 821
    :cond_1c
    :goto_1c
    return-void

    .line 777
    :cond_1d
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    if-lt v4, v8, :cond_1c

    .line 783
    if-le v4, v10, :cond_28

    .line 784
    const/4 v4, 0x3

    .line 787
    :cond_28
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7a

    .line 788
    const/4 v3, 0x1

    .line 789
    .local v3, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_36
    if-ge v0, v4, :cond_45

    .line 790
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_63

    .line 791
    const/4 v3, 0x0

    .line 795
    :cond_45
    if-eqz v3, :cond_7a

    .line 796
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, namesArray:[Ljava/lang/String;
    array-length v1, v2

    .line 798
    .local v1, nameArrayLength:I
    if-ne v1, v10, :cond_66

    .line 800
    aget-object v5, v2, v7

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 801
    aget-object v5, v2, v8

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 802
    aget-object v5, v2, v9

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1c

    .line 789
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 803
    .restart local v1       #nameArrayLength:I
    .restart local v2       #namesArray:[Ljava/lang/String;
    :cond_66
    if-ne v1, v9, :cond_71

    .line 806
    aget-object v5, v2, v7

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 807
    aget-object v5, v2, v8

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1c

    .line 809
    :cond_71
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_1c

    .line 815
    .end local v0           #i:I
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    .end local v3           #onlyFirstElemIsNonEmpty:Z
    :cond_7a
    packed-switch v4, :pswitch_data_98

    .line 819
    :goto_7d
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_1c

    .line 817
    :pswitch_86
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 818
    :pswitch_8e
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_7d

    .line 815
    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_8e
        :pswitch_86
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .registers 11
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_f

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 659
    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    :goto_e
    return-void

    .line 662
    :cond_f
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 663
    .local v8, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v0, v8, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 664
    iput-object p1, v8, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_e

    .end local v8           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_28
    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 670
    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1411
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1412
    .local v3, size:I
    if-le v3, v6, :cond_2f

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1414
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1415
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1416
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_11

    .line 1418
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1421
    .end local v4           #type:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_2e
    return-object v5

    .line 1422
    .restart local p0
    :cond_2f
    if-ne v3, v6, :cond_3a

    .line 1423
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_2e

    .line 1425
    .restart local p0
    :cond_3a
    const-string v5, ""

    goto :goto_2e
.end method

.method private nameFieldsAreEmpty()Z
    .registers 2

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 707
    iget v3, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 733
    :cond_21
    :goto_21
    return-void

    .line 714
    :cond_22
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 715
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_21

    .line 716
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_58

    .line 717
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_58
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 723
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 724
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_70

    .line 725
    const/4 v0, 0x3

    .line 727
    :cond_70
    packed-switch v0, :pswitch_data_90

    .line 730
    :goto_73
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_21

    .line 728
    :pswitch_7d
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 729
    :pswitch_86
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_73

    .line 727
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_86
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Landroid/pim/vcard/VCardEntry$Property;)V
    .registers 29
    .parameter "property"

    .prologue
    .line 824
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v19

    .line 825
    .local v19, propName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v15

    .line 826
    .local v15, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v20

    .line 827
    .local v20, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$300(Landroid/pim/vcard/VCardEntry$Property;)[B

    move-result-object v18

    .line 829
    .local v18, propBytes:[B
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    .line 1062
    .end local p1
    :cond_16
    :goto_16
    return-void

    .line 832
    .restart local p1
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 834
    .local v9, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 836
    const-string v5, "FN"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 837
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_16

    .line 838
    :cond_3f
    const-string v5, "NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_57

    .line 841
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_16

    .line 842
    :cond_57
    const-string v5, "N"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_16

    .line 844
    :cond_6b
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 845
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_16

    .line 846
    :cond_7c
    const-string v5, "NICKNAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 848
    :cond_92
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 849
    :cond_9a
    const-string v5, "SOUND"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 850
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 851
    .local v21, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_16

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .line 859
    .local v17, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_16

    .line 863
    .end local v17           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_cc
    const-string v5, "ADR"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    .line 864
    const/16 v26, 0x1

    .line 865
    .local v26, valuesAreAllEmpty:Z
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_dd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 866
    .local v25, value:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_dd

    .line 867
    const/16 v26, 0x0

    .line 871
    .end local v25           #value:Ljava/lang/String;
    :cond_f1
    if-nez v26, :cond_16

    .line 875
    const/4 v8, -0x1

    .line 876
    .local v8, type:I
    const-string v14, ""

    .line 877
    .local v14, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 878
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 879
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_185

    .line 880
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_105
    :goto_105
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_185

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 881
    .local v23, typeString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 882
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 883
    const/4 v10, 0x1

    goto :goto_105

    .line 884
    :cond_122
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 885
    const/4 v8, 0x1

    .line 886
    const-string v14, ""

    goto :goto_105

    .line 887
    :cond_131
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_147

    const-string v5, "COMPANY"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 892
    :cond_147
    const/4 v8, 0x2

    .line 893
    const-string v14, ""

    goto :goto_105

    .line 894
    :cond_14b
    const-string v5, "PARCEL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_105

    const-string v5, "DOM"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_105

    const-string v5, "INTL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_105

    .line 899
    const-string v5, "X-"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_181

    if-gez v8, :cond_181

    .line 900
    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 904
    :cond_181
    const/4 v8, 0x0

    .line 905
    move-object/from16 v14, v23

    goto :goto_105

    .line 910
    .end local v23           #typeString:Ljava/lang/String;
    :cond_185
    if-gez v8, :cond_188

    .line 911
    const/4 v8, 0x1

    .line 914
    :cond_188
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v20

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 915
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v26           #valuesAreAllEmpty:Z
    :cond_194
    const-string v5, "EMAIL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21b

    .line 916
    const/4 v8, -0x1

    .line 917
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 918
    .restart local v14       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 919
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 920
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_20d

    .line 921
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_1b0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 922
    .restart local v23       #typeString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 923
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 924
    const/4 v10, 0x1

    goto :goto_1b0

    .line 925
    :cond_1cd
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 926
    const/4 v8, 0x1

    goto :goto_1b0

    .line 927
    :cond_1da
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e7

    .line 928
    const/4 v8, 0x2

    goto :goto_1b0

    .line 929
    :cond_1e7
    const-string v5, "CELL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f4

    .line 930
    const/4 v8, 0x4

    goto :goto_1b0

    .line 932
    :cond_1f4
    const-string v5, "X-"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_209

    if-gez v8, :cond_209

    .line 933
    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 938
    :cond_209
    const/4 v8, 0x0

    .line 939
    move-object/from16 v14, v23

    goto :goto_1b0

    .line 943
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_20d
    if-gez v8, :cond_210

    .line 944
    const/4 v8, 0x3

    .line 946
    :cond_210
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 947
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_21b
    const-string v5, "ORG"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 949
    const/4 v8, 0x1

    .line 950
    .restart local v8       #type:I
    const/4 v10, 0x0

    .line 951
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 952
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_24f

    .line 953
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_236
    :goto_236
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 954
    .restart local v23       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_236

    .line 955
    const/4 v10, 0x1

    goto :goto_236

    .line 959
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_24f
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v20

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_16

    .line 960
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_25c
    const-string v5, "TITLE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26f

    .line 961
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 962
    :cond_26f
    const-string v5, "ROLE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 965
    const-string v5, "PHOTO"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_290

    const-string v5, "LOGO"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2de

    .line 967
    :cond_290
    const-string v5, "VALUE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 968
    .local v16, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v16, :cond_2a5

    const-string v5, "URL"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 971
    :cond_2a5
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 972
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 973
    .local v12, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 974
    .restart local v10       #isPrimary:Z
    if-eqz v21, :cond_2d3

    .line 975
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_2b5
    :goto_2b5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 976
    .local v24, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ce

    .line 977
    const/4 v10, 0x1

    goto :goto_2b5

    .line 978
    :cond_2ce
    if-nez v12, :cond_2b5

    .line 979
    move-object/from16 v12, v24

    goto :goto_2b5

    .line 983
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v24           #typeValue:Ljava/lang/String;
    :cond_2d3
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v18

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_16

    .line 985
    .end local v10           #isPrimary:Z
    .end local v12           #formatName:Ljava/lang/String;
    .end local v16           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2de
    const-string v5, "TEL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_327

    .line 986
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 987
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v21

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 991
    .local v22, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_31f

    .line 992
    check-cast v22, Ljava/lang/Integer;

    .end local v22           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 993
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 1000
    .restart local v14       #label:Ljava/lang/String;
    :goto_306
    if-eqz v21, :cond_325

    const-string v5, "PREF"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_325

    .line 1001
    const/4 v10, 0x1

    .line 1005
    .restart local v10       #isPrimary:Z
    :goto_314
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 995
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .restart local v22       #typeObject:Ljava/lang/Object;
    :cond_31f
    const/4 v8, 0x0

    .line 996
    .restart local v8       #type:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #label:Ljava/lang/String;
    goto :goto_306

    .line 1003
    .end local v22           #typeObject:Ljava/lang/Object;
    :cond_325
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_314

    .line 1006
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_327
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_358

    .line 1008
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 1009
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 1011
    .restart local v8       #type:I
    if-eqz v21, :cond_356

    const-string v5, "PREF"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_356

    .line 1012
    const/4 v10, 0x1

    .line 1016
    .restart local v10       #isPrimary:Z
    :goto_349
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 1014
    .end local v10           #isPrimary:Z
    :cond_356
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_349

    .line 1017
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_358
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c2

    .line 1018
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1019
    .local v6, protocol:I
    const/4 v10, 0x0

    .line 1020
    .restart local v10       #isPrimary:Z
    const/4 v8, -0x1

    .line 1021
    .restart local v8       #type:I
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 1022
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_3b7

    .line 1023
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_382
    :goto_382
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1024
    .restart local v23       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39b

    .line 1025
    const/4 v10, 0x1

    goto :goto_382

    .line 1026
    :cond_39b
    if-gez v8, :cond_382

    .line 1027
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3aa

    .line 1028
    const/4 v8, 0x1

    goto :goto_382

    .line 1029
    :cond_3aa
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_382

    .line 1030
    const/4 v8, 0x2

    goto :goto_382

    .line 1035
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_3b7
    if-gez v8, :cond_3ba

    .line 1036
    const/4 v8, 0x1

    .line 1038
    :cond_3ba
    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/pim/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_16

    .line 1039
    .end local v6           #protocol:I
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1
    :cond_3c2
    const-string v5, "NOTE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 1040
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1041
    :cond_3d5
    const-string v5, "URL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3fc

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_3f2

    .line 1043
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1045
    :cond_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 1046
    :cond_3fc
    const-string v5, "BDAY"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40e

    .line 1047
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_16

    .line 1048
    :cond_40e
    const-string v5, "ANNIVERSARY"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_420

    .line 1049
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    goto/16 :goto_16

    .line 1050
    :cond_420
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_432

    .line 1051
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_16

    .line 1052
    :cond_432
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_444

    .line 1053
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_16

    .line 1054
    :cond_444
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_456

    .line 1055
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_16

    .line 1056
    :cond_456
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1059
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_16
.end method

.method public consolidateFields()V
    .registers 2

    .prologue
    .line 1104
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1106
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1107
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1109
    :cond_f
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1518
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1519
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1521
    :cond_7
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1506
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .registers 2

    .prologue
    .line 1407
    invoke-virtual {p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 33
    .parameter "resolver"

    .prologue
    .line 1112
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1118
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1119
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_174

    .line 1120
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1121
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1124
    const-string v3, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1125
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "sourceid"

    aput-object v6, v5, v3

    const-string/jumbo v6, "title=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1130
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_65

    :try_start_5a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1131
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_16d

    move-result-object v20

    .line 1134
    :cond_65
    if-eqz v10, :cond_6a

    .line 1135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1143
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6a
    :goto_6a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v3

    if-nez v3, :cond_113

    .line 1146
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1147
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1148
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1150
    const-string v3, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1151
    const-string v3, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1152
    const-string v3, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1153
    const-string v3, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1154
    const-string v3, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_182

    .line 1159
    :cond_e2
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1160
    const-string v3, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1161
    const-string v3, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    :cond_100
    :goto_100
    const-string v3, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1167
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_199

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_12e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1172
    .local v21, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1173
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1175
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1176
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1177
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 1134
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_16d
    move-exception v3

    if-eqz v10, :cond_173

    .line 1135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_173
    throw v3

    .line 1140
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_174
    const-string v3, "account_name"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1141
    const-string v3, "account_type"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6a

    .line 1162
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_100

    .line 1163
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_100

    .line 1181
    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_20f

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_1a9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1183
    .local v25, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1184
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1185
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    const-string v3, "data2"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v3, v0

    if-nez v3, :cond_1e9

    .line 1189
    const-string v3, "data3"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1191
    :cond_1e9
    const-string v3, "data1"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1192
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_204

    .line 1193
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1195
    :cond_204
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a9

    .line 1199
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_2af

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_21f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2af

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1201
    .local v24, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1202
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1203
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1204
    const-string v3, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1205
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_25f

    .line 1206
    const-string v3, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1208
    :cond_25f
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_270

    .line 1209
    const-string v3, "data5"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1211
    :cond_270
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_281

    .line 1212
    const-string v3, "data4"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1214
    :cond_281
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_292

    .line 1215
    const-string v3, "data8"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1217
    :cond_292
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_2a3

    .line 1218
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1220
    :cond_2a3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21f

    .line 1224
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_316

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_2bf
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_316

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1226
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1227
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1228
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1230
    const-string v3, "data2"

    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1231
    iget v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_2f6

    .line 1232
    const-string v3, "data3"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1234
    :cond_2f6
    const-string v3, "data1"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1235
    iget-boolean v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_30b

    .line 1236
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1238
    :cond_30b
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2bf

    .line 1242
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_34f

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_326
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1244
    .local v27, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1245
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v3, v0

    move v0, v3

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V

    .line 1247
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_326

    .line 1251
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_34f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_3d4

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_35f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1253
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1254
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1255
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1256
    const-string v3, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1257
    const-string v3, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1258
    const-string v3, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1259
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3b8

    .line 1260
    const-string v3, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1262
    :cond_3b8
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_3c9

    .line 1263
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1265
    :cond_3c9
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35f

    .line 1269
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_3d4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_419

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_3e4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_419

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1271
    .local v22, note:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1272
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1273
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1274
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1275
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e4

    .line 1279
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_470

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_429
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_470

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1281
    .local v26, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1282
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1283
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1284
    const-string v3, "data15"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1285
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_465

    .line 1286
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1288
    :cond_465
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_429

    .line 1292
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_4bf

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_480
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4bf

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1294
    .local v30, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1295
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1296
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1297
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1300
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1301
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_480

    .line 1305
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #website:Ljava/lang/String;
    :cond_4bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4fd

    .line 1306
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1307
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1308
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1309
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    const-string v3, "data2"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1311
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_4fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53b

    .line 1315
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1316
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1317
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1318
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1319
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1320
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_53b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_5d5

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_54b
    :goto_54b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1325
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    .line 1326
    .local v29, size:I
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_54b

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54b

    .line 1328
    const/16 v3, 0x10

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_57e

    .line 1329
    const/16 v29, 0x10

    .line 1330
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v11, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1334
    :cond_57e
    const/4 v15, 0x0

    .line 1335
    .local v15, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_583
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1336
    .local v12, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_5ac

    .line 1337
    move-object/from16 v19, v12

    .line 1338
    .local v19, mimeType:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1339
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1340
    const-string v3, "mimetype"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1347
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_5a9
    :goto_5a9
    add-int/lit8 v15, v15, 0x1

    goto :goto_583

    .line 1342
    :cond_5ac
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a9

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5a9

    .line 1349
    .end local v12           #customPropertyValue:Ljava/lang/String;
    :cond_5c9
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_54b

    .line 1353
    .end local v11           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #size:I
    :cond_5d5
    if-eqz v20, :cond_5ff

    .line 1354
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1355
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1356
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1357
    const-string v3, "group_sourceid"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1358
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_5ff
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_608

    .line 1363
    const/4 v3, 0x0

    .line 1380
    :goto_607
    return-object v3

    .line 1367
    :cond_608
    :try_start_608
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v28

    .line 1372
    .local v28, results:[Landroid/content/ContentProviderResult;
    if-eqz v28, :cond_620

    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_620

    const/4 v3, 0x0

    aget-object v3, v28, v3

    if-nez v3, :cond_622

    :cond_620
    const/4 v3, 0x0

    goto :goto_607

    :cond_622
    const/4 v3, 0x0

    aget-object v3, v28, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_627
    .catch Landroid/os/RemoteException; {:try_start_608 .. :try_end_627} :catch_628
    .catch Landroid/content/OperationApplicationException; {:try_start_608 .. :try_end_627} :catch_648

    goto :goto_607

    .line 1375
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :catch_628
    move-exception v3

    move-object v13, v3

    .line 1376
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v3, 0x0

    goto :goto_607

    .line 1378
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_648
    move-exception v3

    move-object v13, v3

    .line 1379
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v3, 0x0

    goto :goto_607
.end method
