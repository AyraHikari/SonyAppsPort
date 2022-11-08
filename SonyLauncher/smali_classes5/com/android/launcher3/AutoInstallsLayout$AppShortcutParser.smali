.class public Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 344
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 385
    const-string v0, "AutoInstalls"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, -0x1

    return v0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 348
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v3, "cn":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 358
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 359
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "packages":[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    aget-object v6, v4, v2

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v5, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v6, v6, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    move-object v3, v5

    move-object v4, v6

    .line 364
    .end local v5    # "cn":Landroid/content/ComponentName;
    .local v3, "cn":Landroid/content/ComponentName;
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    .line 365
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 366
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10200000

    .line 367
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 370
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v7, v6, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v2}, Lcom/android/launcher3/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 372
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 373
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Favorite not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoInstalls"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    return v2

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    return v2
.end method
