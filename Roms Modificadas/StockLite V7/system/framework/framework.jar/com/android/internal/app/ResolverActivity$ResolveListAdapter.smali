.class final Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field final configuration:Landroid/content/res/Configuration;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mcc:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 30
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->configuration:Landroid/content/res/Configuration;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->configuration:Landroid/content/res/Configuration;

    move-object v3, v0

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mcc:I

    .line 262
    new-instance v3, Landroid/content/Intent;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    const-string v3, "layout_inflater"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 266
    const-string/jumbo v3, "phone"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 269
    .local v23, teleManager:Landroid/telephony/TelephonyManager;
    if-nez p5, :cond_72

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/CheckBox;

    move-result-object v5

    if-eqz v5, :cond_b0

    const/16 v5, 0x40

    :goto_69
    or-int/2addr v4, v5

    move-object v0, v3

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    .line 275
    :cond_72
    if-eqz p5, :cond_1cf

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    .local v15, N:I
    if-lez v15, :cond_1cf

    .line 278
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 279
    .local v13, r0:Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x1

    .local v17, i:I
    :goto_86
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_b5

    .line 280
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget v3, v13, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_a1

    iget-boolean v3, v13, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v4, :cond_b2

    .line 289
    :cond_a1
    :goto_a1
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_b2

    .line 290
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    add-int/lit8 v15, v15, -0x1

    goto :goto_a1

    .line 270
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v13           #r0:Landroid/content/pm/ResolveInfo;
    .end local v15           #N:I
    .end local v17           #i:I
    :cond_b0
    const/4 v5, 0x0

    goto :goto_69

    .line 279
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v13       #r0:Landroid/content/pm/ResolveInfo;
    .restart local v15       #N:I
    .restart local v17       #i:I
    :cond_b2
    add-int/lit8 v17, v17, 0x1

    goto :goto_86

    .line 295
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_b5
    const/4 v3, 0x1

    if-le v15, v3, :cond_e8

    .line 296
    new-instance v21, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 298
    .local v21, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mcc:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v21           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_e8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 335
    if-eqz p4, :cond_16e

    .line 336
    const/16 v17, 0x0

    :goto_f6
    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_16e

    .line 337
    aget-object v8, p4, v17

    .line 338
    .local v8, ii:Landroid/content/Intent;
    if-nez v8, :cond_106

    .line 336
    :goto_103
    add-int/lit8 v17, v17, 0x1

    goto :goto_f6

    .line 341
    :cond_106
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 343
    .local v16, ai:Landroid/content/pm/ActivityInfo;
    if-nez v16, :cond_12a

    .line 344
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 348
    :cond_12a
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 349
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 350
    instance-of v3, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_155

    .line 351
    move-object v0, v8

    check-cast v0, Landroid/content/pm/LabeledIntent;

    move-object/from16 v20, v0

    .line 352
    .local v20, li:Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 353
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 354
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v5, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 355
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v5, Landroid/content/pm/ResolveInfo;->icon:I

    .line 357
    .end local v20           #li:Landroid/content/pm/LabeledIntent;
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v9, v0

    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 364
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v8           #ii:Landroid/content/Intent;
    .end local v16           #ai:Landroid/content/pm/ActivityInfo;
    :cond_16e
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 365
    .restart local v13       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v11, 0x0

    .line 366
    .local v11, start:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 367
    .local v14, r0Label:Ljava/lang/CharSequence;
    const/16 v17, 0x1

    :goto_183
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_1c5

    .line 368
    if-nez v14, :cond_18e

    .line 369
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 371
    :cond_18e
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 372
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 373
    .local v22, riLabel:Ljava/lang/CharSequence;
    if-nez v22, :cond_1a9

    .line 374
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 376
    :cond_1a9
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 367
    :goto_1b2
    add-int/lit8 v17, v17, 0x1

    goto :goto_183

    .line 379
    :cond_1b5
    const/4 v3, 0x1

    sub-int v12, v17, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 380
    move-object v13, v5

    .line 381
    move-object/from16 v14, v22

    .line 382
    move/from16 v11, v17

    goto :goto_1b2

    .line 385
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v22           #riLabel:Ljava/lang/CharSequence;
    :cond_1c5
    const/4 v3, 0x1

    sub-int v12, v15, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 388
    .end local v11           #start:I
    .end local v13           #r0:Landroid/content/pm/ResolveInfo;
    .end local v14           #r0Label:Ljava/lang/CharSequence;
    .end local v15           #N:I
    .end local v17           #i:I
    :cond_1cf
    const-string/jumbo v3, "palu"

    const-string v4, "Change Gmail title to Google Mail for any German SIM enabled device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_23f

    if-eqz v23, :cond_23f

    const-string v3, "de"

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23f

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_1f5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 393
    .local v19, info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    const-string/jumbo v3, "palu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity label "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GMail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f5

    .line 395
    const-string v3, "Google Mail"

    move-object v0, v3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 396
    const-string/jumbo v3, "palu"

    const-string v4, "changed to google mail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #info:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_23f
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .registers 8
    .parameter "view"
    .parameter "info"

    .prologue
    .line 500
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 501
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 502
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 503
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_45

    .line 505
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :goto_2d
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3f

    .line 511
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 513
    :cond_3f
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    return-void

    .line 508
    :cond_45
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .registers 22
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v2, p3, p2

    add-int/lit8 v13, v2, 0x1

    .line 408
    .local v13, num:I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_20

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1f
    return-void

    .line 412
    :cond_20
    const/4 v15, 0x0

    .line 413
    .local v15, usePkg:Z
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 414
    .local v14, startApp:Ljava/lang/CharSequence;
    if-nez v14, :cond_38

    .line 415
    const/4 v15, 0x1

    .line 417
    :cond_38
    if-nez v15, :cond_6f

    .line 419
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 421
    .local v8, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v9, p2, 0x1

    .local v9, j:I
    :goto_44
    move v0, v9

    move/from16 v1, p3

    if-gt v0, v1, :cond_6c

    .line 423
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 424
    .local v11, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 425
    .local v10, jApp:Ljava/lang/CharSequence;
    if-eqz v10, :cond_6b

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 426
    :cond_6b
    const/4 v15, 0x1

    .line 433
    .end local v10           #jApp:Ljava/lang/CharSequence;
    .end local v11           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_6c
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 435
    .end local v8           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v9           #j:I
    :cond_6f
    move/from16 v12, p2

    .local v12, k:I
    :goto_71
    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_1f

    .line 436
    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 437
    .local v4, add:Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_a3

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_9a
    add-int/lit8 v12, v12, 0x1

    goto :goto_71

    .line 429
    .end local v4           #add:Landroid/content/pm/ResolveInfo;
    .end local v12           #k:I
    .restart local v8       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v9       #j:I
    .restart local v10       #jApp:Ljava/lang/CharSequence;
    .restart local v11       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_9d
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    .line 443
    .end local v8           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v9           #j:I
    .end local v10           #jApp:Ljava/lang/CharSequence;
    .end local v11           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v4       #add:Landroid/content/pm/ResolveInfo;
    .restart local v12       #k:I
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 484
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 489
    if-nez p2, :cond_18

    .line 490
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, view:Landroid/view/View;
    :goto_c
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 496
    return-object v0

    .line 493
    .end local v0           #view:Landroid/view/View;
    :cond_18
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_c
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 8
    .parameter "position"

    .prologue
    .line 459
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_6

    .line 460
    const/4 v3, 0x0

    .line 472
    :goto_5
    return-object v3

    .line 463
    :cond_6
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 465
    .local v1, dri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_32

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 467
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 470
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v3, v2

    .line 472
    goto :goto_5

    .line 465
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_32
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_16
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 452
    const/4 v0, 0x0

    .line 455
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_5
.end method
