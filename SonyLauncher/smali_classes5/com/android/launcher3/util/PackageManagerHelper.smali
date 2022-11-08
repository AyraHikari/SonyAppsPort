.class public Lcom/android/launcher3/util/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 72
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 73
    return-void
.end method

.method public static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 290
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 292
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 293
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 294
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 295
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManagerHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 298
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I
    .locals 2
    .param p0, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 338
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 339
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLoadingProgress()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 341
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public static getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .line 191
    :try_start_0
    sget v0, Lcom/android/launcher3/R$string;->market_search_intent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    nop

    .line 194
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    return-object v0

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "actions"    # [Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 247
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    .end local v4    # "action":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 251
    return-object v0
.end method

.method public static getStyleWallpapersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget v2, Lcom/android/launcher3/R$string;->wallpaper_picker_package:I

    .line 204
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->custom_activity_picker:I

    .line 205
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static hasShortcutsPermission(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PackageManagerHelper"

    const-string v2, "Failed to make shortcut manager call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 130
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .line 309
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 310
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 314
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 318
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0

    .line 320
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 256
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 257
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 258
    .local v2, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 259
    const/high16 v3, 0x10000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 260
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 261
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 263
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_0
    if-nez v2, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_2
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 271
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 272
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    move v3, v5

    :cond_3
    return v3

    .line 274
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 275
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3

    .line 278
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    return v3
.end method


# virtual methods
.method public getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v1}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 121
    :goto_0
    return-object v1
.end method

.method public getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "flags"    # I

    .line 107
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p1, p3, p2}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 108
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 108
    :goto_1
    return-object v0

    .line 110
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0
.end method

.method public getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 179
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 180
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 182
    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 182
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "srcPackage"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 140
    .local v0, "target":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 146
    return v3

    .line 148
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    return v1

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    return v1

    .line 160
    :cond_3
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    return v3

    .line 169
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_5

    move v1, v3

    :cond_5
    return v1

    .line 170
    :catch_0
    move-exception v2

    .line 172
    return v1
.end method

.method public isAppInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 99
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 80
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 82
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 91
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public startDetailsActivityForInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 213
    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 217
    .local v0, "appInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget-object v1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v2, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void

    .line 221
    .end local v0    # "appInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, "componentName":Landroid/content/ComponentName;
    instance-of v1, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_1

    .line 223
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 224
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_2
    instance-of v1, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v1, :cond_3

    .line 227
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v0, v1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 228
    :cond_3
    instance-of v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 229
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 231
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, p2, p3}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 236
    const-string v2, "PackageManagerHelper"

    const-string v3, "Unable to launch settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_1
    return-void
.end method
