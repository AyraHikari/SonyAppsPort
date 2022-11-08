.class public Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
.super Ljava/lang/Object;
.source "HideLauncherIconManager.java"


# static fields
.field private static sAppContext:Landroid/content/Context;

.field private static sInstance:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private buildUri()Landroid/net/Uri;
    .locals 2

    .line 73
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 74
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    const-string v1, "com.sonymobile.launcher.hidelaunchericonscontentprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    const-string v1, "hide_launcher_icon"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->sInstance:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->sAppContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    invoke-direct {v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->sInstance:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    .line 31
    return-void
.end method


# virtual methods
.method public existsGamePackageName(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->buildUri()Landroid/net/Uri;

    move-result-object v6

    .line 60
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "package_name=?"

    .line 61
    .local v7, "selection":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    .line 62
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 66
    return v9

    .line 69
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    return v8
.end method

.method public queryHideLauncherIcons()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->buildUri()Landroid/net/Uri;

    move-result-object v7

    .line 43
    .local v7, "uri":Landroid/net/Uri;
    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 44
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 45
    nop

    .line 52
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_0
    return-object v0

    .line 48
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    const-string v2, "package_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "columnId":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    nop

    .end local v2    # "columnId":I
    goto :goto_0

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    return-object v0

    .line 43
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method
