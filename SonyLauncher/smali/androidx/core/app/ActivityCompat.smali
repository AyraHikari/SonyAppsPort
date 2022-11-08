.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$Api23Impl;,
        Landroidx/core/app/ActivityCompat$Api28Impl;,
        Landroidx/core/app/ActivityCompat$Api22Impl;,
        Landroidx/core/app/ActivityCompat$Api21Impl;,
        Landroidx/core/app/ActivityCompat$Api16Impl;,
        Landroidx/core/app/ActivityCompat$Api31Impl;,
        Landroidx/core/app/ActivityCompat$Api30Impl;,
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroidx/core/content/ContextCompat;-><init>()V

    .line 160
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 298
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api16Impl;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 302
    :goto_0
    return-void
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 315
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->finishAfterTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 319
    :goto_0
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    .line 179
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 341
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api22Impl;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 345
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 346
    return-object v1

    .line 348
    :cond_1
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 350
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 352
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 624
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 625
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api31Impl;->isLaunchedFromBubble(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 626
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 627
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api30Impl;->getDisplay(Landroid/content/ContextWrapper;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 628
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api30Impl;->getDisplay(Landroid/content/ContextWrapper;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 627
    :goto_0
    return v2

    .line 629
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_4

    .line 630
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 631
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 630
    :goto_1
    return v2

    .line 634
    :cond_4
    return v3
.end method

.method static synthetic lambda$recreate$0(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 672
    :cond_0
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 423
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 425
    :cond_0
    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 666
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 667
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .line 648
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 515
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p0, p1, p2}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 522
    .local v0, "indicesOfPermissionsToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 523
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_1

    .line 529
    aget-object v2, p1, v1

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission request for permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 525
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must not contain null or empty values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 536
    .local v1, "numPermissionsToRemove":I
    if-lez v1, :cond_4

    .line 537
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v2, p1

    .line 538
    .local v2, "permissionsArray":[Ljava/lang/String;
    :goto_1
    if-lez v1, :cond_7

    .line 539
    array-length v3, p1

    if-ne v1, v3, :cond_5

    .line 540
    return-void

    .line 542
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "modifiedIndex":I
    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_7

    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 544
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "modifiedIndex":I
    .local v5, "modifiedIndex":I
    aget-object v6, p1, v3

    aput-object v6, v2, v4

    move v4, v5

    .line 542
    .end local v5    # "modifiedIndex":I
    .restart local v4    # "modifiedIndex":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    .end local v3    # "i":I
    .end local v4    # "modifiedIndex":I
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_9

    .line 550
    instance-of v3, p0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v3, :cond_8

    .line 551
    move-object v3, p0

    check-cast v3, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 552
    invoke-interface {v3, p2}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 554
    :cond_8
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api23Impl;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3

    .line 555
    :cond_9
    instance-of v3, p0, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v3, :cond_a

    .line 556
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Landroidx/core/app/ActivityCompat$1;

    invoke-direct {v4, v2, p0, p2}, Landroidx/core/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_a
    :goto_3
    return-void
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 374
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api28Impl;->requireViewById(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_1

    .line 381
    return-object v0

    .line 379
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 395
    if-eqz p1, :cond_0

    .line 396
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 398
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 400
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_1
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 414
    if-eqz p1, :cond_0

    .line 415
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 416
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 417
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 419
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_1
    return-void
.end method

.method public static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "locusId"    # Landroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 709
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V

    .line 711
    :cond_0
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0
    .param p0, "delegate"    # Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 170
    sput-object p0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 171
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-ge v0, v2, :cond_0

    .line 591
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    return v1

    .line 595
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 596
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api23Impl;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 598
    :cond_1
    return v1
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 244
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$Api16Impl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 248
    :goto_0
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 281
    invoke-static/range {p0 .. p7}, Landroidx/core/app/ActivityCompat$Api16Impl;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 287
    :goto_0
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 429
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 431
    :cond_0
    return-void
.end method
