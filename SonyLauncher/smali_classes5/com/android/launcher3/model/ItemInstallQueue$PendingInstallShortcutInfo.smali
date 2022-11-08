.class Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "ItemInstallQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ItemInstallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field shortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "widgetId"    # I

    .line 280
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 281
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    .line 285
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 287
    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 269
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 270
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    .line 271
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    .line 272
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 274
    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 260
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    .line 263
    iput-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 264
    return-void
.end method

.method static synthetic lambda$getItemInfo$0(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0
    .param p0, "lai"    # Landroid/content/pm/LauncherActivityInfo;

    .line 319
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 348
    instance-of v0, p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 349
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    .line 351
    .local v0, "other":Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 352
    .local v2, "userMatches":Z
    iget v3, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    iget v4, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    .line 353
    .local v3, "itemTypeMatches":Z
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 354
    .local v4, "intentMatches":Z
    iget-object v6, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v6, :cond_2

    .line 355
    iget-object v6, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_1

    .line 358
    :cond_2
    iget-object v7, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v7, :cond_3

    .line 357
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 358
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    nop

    .line 359
    .local v6, "shortcutInfoMatches":Z
    iget-object v7, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_5

    .line 360
    iget-object v7, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v1

    goto :goto_2

    .line 362
    :cond_5
    iget-object v8, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v8, :cond_6

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    move v7, v1

    :goto_2
    nop

    .line 364
    .local v7, "providerInfoMatches":Z
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    move v1, v5

    :cond_7
    return v1

    .line 370
    .end local v0    # "other":Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .end local v2    # "userMatches":Z
    .end local v3    # "itemTypeMatches":Z
    .end local v4    # "intentMatches":Z
    .end local v6    # "shortcutInfoMatches":Z
    .end local v7    # "providerInfoMatches":Z
    :cond_8
    return v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemInfo(Landroid/content/Context;)Landroid/util/Pair;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 296
    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 343
    return-object v1

    .line 323
    :sswitch_0
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 324
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 325
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 326
    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 329
    .end local v0    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 330
    invoke-static {p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 331
    .local v0, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    new-instance v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    .line 332
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 334
    .local v1, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 335
    .local v2, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    .line 336
    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    .line 337
    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 338
    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 339
    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    iput-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 340
    iget-object v3, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 298
    .end local v0    # "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v2    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :sswitch_2
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "packageName":Ljava/lang/String;
    const-class v3, Landroid/content/pm/LauncherApps;

    .line 300
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    iget-object v4, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 301
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "laiList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    new-instance v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 304
    .local v4, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    iput-object v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 305
    iput v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 308
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    .line 309
    .local v5, "usePackageIcon":Z
    if-eqz v5, :cond_0

    .line 310
    const/4 v6, 0x0

    .line 311
    .local v6, "lai":Landroid/content/pm/LauncherActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, ""

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 312
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 313
    iget v7, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_0

    .line 315
    .end local v6    # "lai":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    .line 316
    .restart local v6    # "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-static {v6}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 318
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 319
    invoke-virtual {v7, v4, v8, v5, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V

    .line 320
    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
