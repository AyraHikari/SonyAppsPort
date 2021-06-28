.class public Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;
.super Ljava/lang/Object;
.source "GoogleDriveUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearArtworkForAccount(Landroid/content/Context;I)V
    .locals 7

    const-string v3, "account_id=?"

    const/4 v0, 0x1

    .line 103
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "file_id"

    aput-object v0, v5, v1

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file_id"

    .line 110
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 112
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    :cond_1
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->deleteGoogleDriveArtworkFiles(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 118
    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static deleteAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 76
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "name = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 90
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->clearArtworkForAccount(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->delete(Landroid/content/ContentResolver;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 96
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getDatabaseCloudServiceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDownloadAllowed(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 165
    invoke-static {p0}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->getConnectedNetworkType(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v0
.end method

.method public static isGoogleDriveAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 130
    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGoogleDriveDisabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isGoogleDriveDisabled()Z

    move-result v0

    .line 137
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/GooglePlayServices;->getAvailability(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v4, "unavailable"

    .line 139
    invoke-static {p0, v4}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->updateConnectionState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public static isStreamingAllowed(Landroid/content/Context;)Z
    .locals 1

    .line 176
    invoke-static {p0}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->getConnectedNetworkType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static removeGoogleDriveData(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveUsed(Landroid/content/Context;Z)V

    .line 60
    invoke-static {p0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f100263

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->remove(Landroid/content/Context;Ljava/lang/String;)I

    .line 69
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->reset(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->deleteGoogleDriveArtwork(Landroid/content/Context;)V

    return-void
.end method

.method public static storeProfileInDatabase(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->getDatabaseCloudServiceId()I

    move-result v0

    .line 47
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->add(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method
