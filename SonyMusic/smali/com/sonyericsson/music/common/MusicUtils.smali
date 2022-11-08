.class public Lcom/sonyericsson/music/common/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field public static final ACTION_SHOW_LANDING_PAGE:Ljava/lang/String; = "com.sonyericsson.music.action.SHOW_LANDING_PAGE"

.field private static final MU_DATABASE_NAME_CACHE:Ljava/lang/String; = "mu_cache.db"

.field private static final MU_DATABASE_NAME_METERING:Ljava/lang/String; = "metering.db"

.field private static final MU_DATABASE_NAME_SMART_PLAYLISTS:Ljava/lang/String; = "smartplaylist_pattern.db"

.field private static final MU_OFFLINE_SESSION_CONFIG_FILE:Ljava/lang/String; = "offline_session_config.dat"

.field private static final MU_ONLINE_SESSION_CONFIG_FILE:Ljava/lang/String; = "online_session_config.dat"

.field public static final MU_TRACK_CACHE_DIR:Ljava/lang/String; = "TRACK_CACHE"

.field private static final SUNSET_FLAG_FILE_NAME:Ljava/lang/String; = "flag.json"

.field private static final SUNSET_MESSAGE_FILE_NAME:Ljava/lang/String; = "message.json"

.field public static final SUPPORT_SDK_O_API:Z

.field public static final SUPPORT_SDK_Q_API:Z

.field public static final SUPPORT_SDK_R_API:Z

.field public static final SUPPORT_SDK_S_API:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_O_API:Z

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sput-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearMUTrackFiles(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TRACK_CACHE"

    .line 378
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p0}, Lcom/sonyericsson/music/common/FileUtils;->deleteRecursive(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private static clearPlaylistArtStore(Landroid/content/Context;)V
    .locals 2

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    invoke-static {p0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteMUFiles(Landroid/content/Context;)V
    .locals 1

    .line 348
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    if-eqz p0, :cond_0

    const-string v0, "mu_cache.db"

    .line 351
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "metering.db"

    .line 352
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "smartplaylist_pattern.db"

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "online_session_config.dat"

    .line 355
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "offline_session_config.dat"

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 358
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->clearMUTrackFiles(Landroid/content/Context;)V

    .line 360
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->clearPlaylistArtStore(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static deleteSunsetFiles(Landroid/content/Context;)V
    .locals 1

    .line 340
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    if-eqz p0, :cond_0

    const-string v0, "flag.json"

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, "message.json"

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static discAndTrackNumberToMediaStoreTrackNumber(II)I
    .locals 1

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-gtz p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    :goto_0
    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p0, p1

    return p0
.end method

.method public static discAndTrackNumberToMediaStoreTrackNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 476
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 481
    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :catch_1
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/MusicUtils;->discAndTrackNumberToMediaStoreTrackNumber(II)I

    move-result p0

    return p0
.end method

.method public static finishAndStopPlaybackService(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static getApplicationName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 416
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_0
    check-cast p2, Ljava/lang/String;

    return-object p2
.end method

.method public static getErrorText(I)I
    .locals 2

    const/16 v0, 0xa

    const v1, 0x7f1001bb

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f100133

    goto :goto_0

    :cond_1
    const v1, 0x7f1001bd

    goto :goto_0

    :cond_2
    const v1, 0x7f1001bc

    :cond_3
    :goto_0
    return v1
.end method

.method private static getSwVariant()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 540
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 541
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 543
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "get"

    .line 544
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 546
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.semc.version.sw_variant"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugBuild()Z
    .locals 3

    :try_start_0
    const-string v0, "debug"

    .line 398
    const-class v1, Lcom/sonyericsson/music/BuildConfig;

    const-string v2, "BUILD_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .line 435
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 436
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFavorite(Landroid/content/Context;I)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 218
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 223
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v3, p0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    if-eq p0, v0, :cond_2

    .line 226
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 227
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "play_order"

    .line 226
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 233
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 235
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 236
    throw p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public static isImBuild()Z
    .locals 3

    :try_start_0
    const-string v0, "im"

    .line 406
    const-class v1, Lcom/sonyericsson/music/BuildConfig;

    const-string v2, "BUILD_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRestrictedUser(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "user"

    .line 203
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "no_modify_accounts"

    .line 208
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    xor-int/lit8 p0, v3, 0x1

    return p0
.end method

.method public static isUsVariant()Z
    .locals 3

    .line 524
    new-instance v0, Lcom/sonyericsson/music/common/ServiceProviderChecker;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ServiceProviderChecker;-><init>()V

    .line 525
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/ServiceProviderChecker;->getServiceProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4431"

    .line 526
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "9055"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->getSwVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public static mediaStoreTrackNumberToDiscAndTrackNumber(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-gez p0, :cond_0

    .line 453
    new-instance p0, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 456
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 457
    rem-int/lit16 p0, p0, 0x3e8

    .line 459
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static modifyFavoritesPlaylist(ZLandroid/content/Context;JZ)Z
    .locals 10

    .line 291
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 295
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 297
    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    .line 300
    sget-boolean p0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, v2, p2, p3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->removeTrackToFavorite(IJ)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-boolean p0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez p0, :cond_9

    new-array p0, v3, [Ljava/lang/Long;

    .line 301
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->removeFromPlaylistWithAudioId(ILjava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_2
    if-eqz p4, :cond_9

    const p0, 0x7f1002be

    .line 303
    invoke-static {p1, p0}, Lcom/sonyericsson/music/common/MusicUtils;->showToastOnUiThread(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    if-le v2, p0, :cond_9

    const-wide/16 v4, -0x1

    cmp-long p0, p2, v4

    if-lez p0, :cond_9

    .line 309
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {p0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 316
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 317
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, p2, p3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTrackToFavorite(IJ)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_8

    long-to-int p3, p2

    .line 318
    invoke-virtual {v0, v2, p3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTrackToPlaylist(II)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_5
    if-eqz p4, :cond_8

    const p2, 0x7f1002bb

    .line 321
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->showToastOnUiThread(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_8

    const p2, 0x7f1002bc

    .line 325
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->showToastOnUiThread(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 330
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_7
    throw p1

    :cond_8
    :goto_0
    if-eqz p0, :cond_9

    .line 330
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_1
    return v3
.end method

.method public static openPlayerFragment(Landroid/app/Activity;Z)V
    .locals 2

    .line 178
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;-><init>()V

    const-string v1, "PlayerFragment"

    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;ZLandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static openPlayerFragment(Landroid/app/Activity;ZLandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 183
    new-instance v0, Lcom/sonyericsson/music/common/MusicUtils$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sonyericsson/music/common/MusicUtils$1;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openPlayerLauncherFragment(Landroid/app/Activity;)V
    .locals 3

    .line 170
    check-cast p0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p0, :cond_0

    const-string v0, "PlayerFragment"

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->newInstance(Z)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "PlayerFragment"

    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;ZLandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static restartMusicActivity(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 2

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 431
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showEnqueueToast(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f10021c

    .line 162
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f10021b

    .line 159
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f10021d

    .line 156
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f10021a

    .line 153
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f100219

    .line 150
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_5
    const p1, 0x7f10021e

    .line 147
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static showToastOnUiThread(Landroid/content/Context;I)V
    .locals 2

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 368
    new-instance v1, Lcom/sonyericsson/music/common/MusicUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/common/MusicUtils$2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "grab_media_button_focus"

    .line 111
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 114
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z
    .locals 3

    .line 121
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v0

    .line 123
    invoke-interface {v0, p0}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/sonyericsson/music/common/MusicUtils$3;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return v2

    .line 129
    :pswitch_0
    invoke-interface {v0, p1, p0}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    return v2

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
